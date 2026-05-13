grammar compilerv1;

@lexer::members {
  private:
    bool expectInclusive = false;
    bool pendingInlineSeparator = false;
    bool awaitingInlinePayloadLanguage = false;

    bool shouldExpectInclusiveAfterInlinePayload() {
      int lookahead = 1;
      int ch = _input->LA(lookahead);
      while (ch == ' ' || ch == '\t' || ch == '\r' || ch == '\n') {
        lookahead++;
        ch = _input->LA(lookahead);
      }
      return ch == '{' || ch == '-';
    }

    void maybeArmInclusiveAfterInlineLanguage() {
      if (!awaitingInlinePayloadLanguage) {
        pendingInlineSeparator = false;
        return;
      }
      expectInclusive = shouldExpectInclusiveAfterInlinePayload();
      awaitingInlinePayloadLanguage = false;
    }
}

program      : (directive | importStmt | include | function | macro | templateDecl | class | struct | memstruct | scheduleDecl | typedefStruct | opstruct | typedefOpstruct | interfaceDecl | rdwindowStmt | eventHandlerStmt | globalInit | init | ltoInit | easyInit | lambda | srcDecl | instance | instancepush | memberaccess ';' | nativemode | inlineForeignBlock | asyncCall | syscallStmt | malloc | mntDecl | delalc | free | plcnew | unsafeBlock | bypassBlock | autofmtdeclareScope | inductStmt | releaseStmt | dircpp | schedulerStartStmt | schedulerInsertStmt | schedulerVoidStmt)* EOF ;
directive    : gcDirective | borrowCheckerDirective | runtimeDirective | settingDirective ;
gcDirective  : '#[' (GC_NAME | GCMODE_NAME) '(' ID ')' ']' ;
borrowCheckerDirective : '#[' (BORROW_CHECKER_NAME | BORROW_CHECK_NAME) '(' ID ')' ']' ;
runtimeDirective : '#[' ID '(' ID ')' ']' ;
settingDirective : '#[' 'setting' '(' ID ',' settingValue ')' ']' ;
settingValue : ID | INT | STRING ;
importStmt   : 'extern' (STRING | headerPath | importPath) ('-cpp')* ';'? ;
instance     : ((INSTANCE_MODE 'instance') | INS | STAT) ID ('=' instanceValue)? ';' ;
instancepush : ID '.' 'push' '(' instanceValue ')' ';' ;
memberaccess : accessBase '.' (functionCall|ID) ;
accessBase   : ID | INDEF ;
instanceValue: ID LBRACE args? RBRACE allocatorUseSuffix? ;
allocatorUseSuffix : '.' 'uses' '(' expression ')' ;
importPath   : (ID | '*') ('.' (ID | '*'))* ;
headerPath   : headerPart (('/' | '\\') headerPart)+ ;
headerPart   : headerPartAtom (('.' | '-') headerPartAtom)* ;
headerPartAtom : ID | GC_NAME | BORROW_CHECKER_NAME ;
function     : returnType ID '(' params? ')' attributeBlock? block ;
method       : ANNOT_OVERRIDE? CLSTYPE? (STATIC? VIRTUAL? returnType ID '(' params? ')' attributeBlock? block
             | '__construct' '(' params? ')' attributeBlock? block
             | '__destruct' '(' ')' attributeBlock? block) ;
field        : CLSTYPE? (CONST | NCONST)? typeRef ID attributeBlock? ';' ;
params       : param (',' param)* ;
param        : (CONST | NCONST)? typeRef? ID ;
borrowExpr   : '&' NCONST? ID ;
block        : LBRACE (statement | returnStmt)* RBRACE ;
classBody    : LBRACE classMember* RBRACE ;
templateDecl : 'template' ID '(' templateParams ')' classBody ;
templateParams : ID (',' ID)* ;
dircpp       : DIRCPP_HDR INCLUSIVE ;
inlineForeignBlock : INLINE INLINE_SEP (NATIVE | ID) INCLUSIVE ';'? ;
structBody   : LBRACE structMember* RBRACE ;
scheduleDecl : SCHEDULE ID LBRACE scheduleMember* RBRACE ;
scheduleMember : mandatoryScheduleMember ;
mandatoryScheduleMember : MANDATORY ID block ;
classMember  : method | field | templateDecl | class | struct ;
structMember : method | field | templateDecl | class | struct ;
print        : 'sys' '.' ('stdout' | 'println') '(' expression ')' ';' ;
nativemode   : (ASYNC | LANG) ('-' OVERRIDE)? INCLUSIVE (NATIVE | ID) ';' ;
asyncCall    : ASYNC functionCall ';' ;
syscallStmt  : SYSCALL ('-' ALL)? ';' ;
globalInit   : GLOBAL init ;
malloc       : 'void*' ID '.' 'alc' '(' typeRef ')' ';'
             | 'void*' ID '.' 'alc' '(' expression ')' typeRef ';' ;
mntDecl      : MNT typeRef ID '=' expression ';' ;
delalc       : 'crt null' ID ';' ;
free         : 'void' ID ';' ;
plcnew       : plcnewType ID '=' typeRef '[]' plcnewType ';' ;
plcnewType   : typeRef | '*' ;
pointer      : typeRef ID '_' '&' ID ';' ;
include      : 'extern' '{' importPath '}' ';'? ;
returnType   : 'void' | typeRef ;
typeRef      : typeAtom typeModifier* ;
thread       : (THREADMODE | JOIN) 'thread' ID functionCall ';' ;
typeAtom     : genericType
             | functionType
             | TYPE
             | FTYPE
             | ID ;
typeModifier : '*' | '&' ;
genericType  : ID '<' typeRef (',' typeRef)? '>' ;
functionType : 'fn' '<' returnType '(' functionTypeArgs? ')' '>' ;
functionTypeArgs : typeRef (',' typeRef)* ;
macro        : macroQualifier ID '(' params? ')' block ;
macroQualifier : 'extern [&macro]' | '__preprocess [&macro]' | 'extern [&dynamic_macro]' | '__preprocess [&dynamic_macro]' ;
stdinStmt    : 'sys' '.' 'stdin(' ID ')' ';' ;
stdinValue   : 'sys' '.' 'stdin(' ')' ;
lambda       : typeRef ID '=' 'lmd->' lambdaDefinition ;
lambdaDefinition : function | lambdaLiteral ;
lambdaLiteral : returnType? '(' params? ')' block ;
srcDecl      : (CONST | NCONST)? SRC ID ('(' params? ')')? ('->' returnType)? '=' block ;
cscope       : '@autoreleasepool' block ;
unsafeBlock  : UNSAFE block ;
bypassBlock  : BYPASS block ;
autofmtdeclareScope : AUTOFMTDECLARE block ;
bridgeInit   : BRIDGE init ;
inductStmt   : INDUCT ID ';' ;
releaseStmt  : RELEASE ID ';' ;
attributeBlock : '.att' '{' attributeEntry (',' attributeEntry)* '}' ;
attributeEntry : ID ('(' attributeArgs? ')')? ;
attributeArgs : attributeValue (',' attributeValue)* ;
attributeValue : ID | STRING | INT ;
unsafeLineStmt : '%' unsafeLinePayload ;
unsafeLinePayload
             : pointer
             | malloc
             | mntDecl
             | delalc
             | free
             | plcnew
             | dircpp
             | nativemode
             ;
statement    : pointer
             | init
             | typedefOpstructSession
             | typedefOpstructCreateStmt
             | typedefOpstructPhraseStmt
             | rdwindowStmt
             | eventHandlerStmt
             | unsafeLineStmt
             | unsafeBlock
             | bypassBlock
             | autofmtdeclareScope
             | malloc
             | mntDecl
             | delalc
             | free
             | thread
             | globalInit
             | bridgeInit
             | inductStmt
             | releaseStmt
             | cscope
             | plcnew
             | dircpp
             | assignment
             | lambda
             | functionCall ';'
             | memberaccess ';'
             | ifStatement
             | whileStatement
             | forStatement
             | forInStatement
             | switchStatement
             | tryCatchStatement
             | autocatchStatement
             | ltoInit
             | ltoTypesetStmt
             | easyInit
             | instance
             | instancepush
             | srcDecl
             | schedulerStartStmt
             | schedulerInsertStmt
             | schedulerVoidStmt
             | nativemode
             | inlineForeignBlock
             | asyncCall
             | syscallStmt
             | templateDecl
             | class
             | struct
             | interfaceDecl
             | print
             | stdinStmt
             | assertStmt
             | block ;

typedefOpstructSession : ID ID typedefOpstructCommand+ ;
typedefOpstructCreateStmt : typedefOpstructWord typedefOpstructWord+ ';' ;
typedefOpstructPhraseStmt : typedefOpstructWord+ typedefOpstructCapture ';' ;
typedefOpstructCommand : typedefOpstructWord+ typedefOpstructCapture ';' ;
typedefOpstructCapture : '[' expression ']' ;
typedefOpstructWord : ID | 'new' ;

rdwindowStmt : 'rdwindow' ID ';' ;
eventHandlerStmt : ID '.' 'event' '(' expression ')' block ;

schedulerStartStmt : ID '.' 'new' '(' ID ')' '.' schedulerStartMode '(' ')' ';' ;
schedulerStartMode : DETATCH | DETACH | JOIN ;
schedulerInsertStmt : ID '.' INS '(' ID ',' expression ')' block ;
schedulerVoidStmt : ID '.' (SCHVOID | 'void') '(' ')' ';' ;

ifStatement    : IF '(' expression ')' block (ELSE block)? ;
whileStatement : WHILE '(' expression ')' block ;
forStatement   : FOR '(' forInit? ';' expression? ';' forUpdate? ')' block ;
forInStatement : FOR '(' (CONST | NCONST)? typeRef ID IN expression ')' block ;
switchStatement : SWITCH '(' expression ')' LBRACE switchCase* switchDefault? RBRACE ;
switchCase     : CASE expression ':' block ;
switchDefault  : DEFAULT ':' block ;
tryCatchStatement : TRY block CATCH '(' TERMINALEXCEPTION '(' ID ')' ')' block ;
autocatchStatement : AUTOCATCH '(' ID ')' block ;
assignment     : assignmentCore ';' ;
assignmentCore : assignTarget '=' expression ;
assignTarget   : ID ('[' accessKey ']')* ;
accessKey      : expression
               | APND ;
init           : initCore ';' ;
ltoInit        : (CONST | NCONST)? LTO ID '=' expression ';' ;
ltoTypesetStmt : ID '.' 'typeset' '(' typeRef ')' ('.' 'cast' '(' ')')? ';' ;
easyInit       : (((CONST | NCONST)? ATO ID '=' expression)
               | ((CONST | NCONST)? ID ':=' expression)) ';'
               ;
initCore       : (CONST | NCONST)? typeRef ID ( '=' expression )? ;
forInit        : initCore
               | assignmentCore
               | expression ;
forUpdate      : assignmentCore
               | expression ;
assertStmt     : 'assert' '(' expression ')' ';' ;

expression     : orExpr ('?' expression ':' expression)? ;

orExpr         : andExpr ( '||' andExpr )* ;

andExpr        : bitwiseOrExpr ( '&&' bitwiseOrExpr )* ;

bitwiseOrExpr  : bitwiseXorExpr ( '|' bitwiseXorExpr )* ;

bitwiseXorExpr : bitwiseAndExpr ( '^' bitwiseAndExpr )* ;

bitwiseAndExpr : equalityExpr ( '&' equalityExpr )* ;

equalityExpr   : shiftExpr ( ( '==' | '!=' ) shiftExpr )* ;

shiftExpr      : relationalExpr ( ( '<<' | rightShiftOperator ) relationalExpr )* ;

rightShiftOperator : '>' '>' ;

relationalExpr : addExpr ( ( '<' | '>' | '<=' | '>=' ) addExpr )* ;

addExpr        : multExpr (('+' | '-') multExpr)* ;

multExpr       : primary (('*' | '/' | '%') primary)* ;

primary        : INT
               | SUCCESS
               | STRING
               | templateString
               | stdinValue
               | castExpr
               | placementNewExpr
               | functionCall
               | memberaccess
               | indexedAccess
               | compositeLiteral
               | braceInitializer
               | instanceValue
               | borrowExpr
               | INDEF
               | ID
               | '(' expression ')'
               ;
templateString : TEMPLATE_STRING ;
castExpr      : '(' castType ')' primary ;
castType      : typeRef ;
placementNewExpr : 'new' '[' expression ']' typeRef ;
indexedAccess  : ID ('[' accessKey ']')+ ;
compositeLiteral : '<' expression (',' expression)+ '>' ;
braceInitializer : LBRACE (braceInitializerElement (',' braceInitializerElement)* ','?)? RBRACE ;
braceInitializerElement : '.' ID '=' expression
                        | expression
                        ;
functionCall   : ID '(' args? ')' ;
args           : expression (',' expression)* ;
returnStmt     : 'return' expression? ';' ;
communalQualifier : COMMUNAL | CMGLOBAL ;
class          : 'class' ID inheritanceClause? attributeBlock? classBody ;
struct         : communalQualifier? 'struct' ID inheritanceClause? attributeBlock? structBody ;
memstruct      : communalQualifier? MEMSTRUCT ID inheritanceClause? attributeBlock? structBody ;
typedefStruct  : 'typedef' struct ID? ';'? ;
opstruct       : STDEF OPSTRUCT ID attributeBlock? opstructBody ;
opstructBody   : LBRACE field* RBRACE ;
typedefOpstruct : 'typedef' OPSTRUCT ID (ID ';'? | typedefOpstructDslBody) ;
typedefOpstructDslBody : LBRACE typedefOpstructDslEntry* RBRACE ;
typedefOpstructDslEntry : typedefOpstructAsgEntry | typedefOpstructSrcEntry ;
typedefOpstructAsgEntry : ASG '(' STRING ')' '->' block ;
typedefOpstructSrcEntry : SRC '(' STRING ')' '->' typedefOpstructTemplateBody ;
typedefOpstructTemplateBody : LBRACE typedefOpstructTemplateBodyItem* RBRACE ;
typedefOpstructTemplateBodyItem : statement | returnStmt | ID ;
interfaceDecl  : 'itr' ID inheritanceClause? attributeBlock? '{' virtualMethod* '}' ;
inheritanceClause : '*' inheritedType (';' inheritedType)* ;
inheritedType  : CLSTYPE? typeRef ;
virtualMethod  : VIRTUAL returnType ID '(' params? ')' ';' ;

IF       : 'if' ;
ELSE     : 'else' ;
WHILE    : 'while' ;
FOR      : 'for' ;
IN       : 'in' ;
SWITCH   : 'switch' ;
CASE     : 'case' ;
DEFAULT  : 'default' ;
TRY      : 'try' ;
CATCH    : 'catch' ;
TERMINALEXCEPTION : 'terminalexception' ;
AUTOCATCH : 'autocatch' ;
SUCCESS  : 'success' ;
TYPE     : 'i16' | 'i32' | 'i64' | 'u16' | 'u32' | 'u64' | 'str' | 'f64' ;
FTYPE    : 'int' | 'short' | 'long' | 'float' | 'double' ;
CLSTYPE  : 'public' | 'private' ;
STATIC   : 'static' ;
VIRTUAL  : 'virtual' ;
INSTANCE_MODE : 'crt' | 'staticx' ;
INS      : 'ins' ;
STAT     : 'stat' ;
ATO      : 'ato' ;
SRC      : 'src' ;
ASG      : 'asg' ;
LTO      : 'lto' ;
MNT      : 'mnt' ;
INDEF    : 'indef' ;
ANNOT_OVERRIDE : '@Override' ;
INLINE   : 'inline' { pendingInlineSeparator = true; } ;
ASYNC    : 'async' { expectInclusive = shouldExpectInclusiveAfterInlinePayload(); } ;
LANG     : 'lang' { expectInclusive = shouldExpectInclusiveAfterInlinePayload(); } ;
INLINE_SEP : '::' {
    if (pendingInlineSeparator) {
      awaitingInlinePayloadLanguage = true;
      pendingInlineSeparator = false;
    }
} ;
DIRCPP_HDR : ('std -hres' | 'cxx::std') { expectInclusive = true; } ;
OVERRIDE : 'override' ;
SYSCALL  : 'syscall' ;
ALL      : 'recursive' ;
APND     : 'apnd' ;
CONST    : 'const' ;
NCONST   : 'nconst' ;
THREADMODE : 'prll' ;
JOIN     : 'join' ;
GLOBAL   : 'global' ;
BRIDGE   : '@bridge' ;
UNSAFE   : '@unsafe' ;
BYPASS   : '@bypass' ;
AUTOFMTDECLARE : '@autofmtdeclare' ;
INDUCT   : '@induct' ;
RELEASE  : '@release' ;
COMMUNAL : '@communal' ;
CMGLOBAL : '@cmglobal' ;
STDEF    : 'stdef' ;
OPSTRUCT : 'opstruct' ;
MEMSTRUCT : 'memstruct' ;
SCHEDULE : 'schedule' ;
MANDATORY : 'mandatory' ;
DETATCH : 'detatch' ;
DETACH : 'detach' ;
SCHVOID : 'schvoid' ;
GC_NAME  : 'gc' ;
GCMODE_NAME : 'gcmode' ;
BORROW_CHECKER_NAME : 'borrow_checker' ;
BORROW_CHECK_NAME : 'borrow_check' ;
ID       : [a-zA-Z_][a-zA-Z0-9_]* { maybeArmInclusiveAfterInlineLanguage(); } ;
NATIVE   : 'cpp' | 'c' | 'rs' | 'rust' | 'java' | 'cs' | 'csharp' | 'py' | 'python' | 'js' | 'javascript' | 'ts' | 'typescript' | 'go' | 'golang' | 'php' | 'rb' | 'ruby' | 'kt' | 'kotlin' { maybeArmInclusiveAfterInlineLanguage(); } ;
INCLUSIVE
    : {expectInclusive}? '{' INCLUSIVE_CONTENT* '}'
      {
          {
              std::string text = getText();
              setText(text.substr(1, text.size() - 2));
              expectInclusive = false;
          }
      }
    ;

LBRACE   : '{' ;
RBRACE   : '}' ;

fragment INCLUSIVE_CONTENT
    : '{' INCLUSIVE_CONTENT* '}' 
    | ~[{}]                     
    ;
STRING   : '"' .*? '"' ;
TEMPLATE_STRING : '`' .*? '`' ;
INT      : [0-9]+ ;
WS       : [ \t\r\n]+ -> skip ;
COMMENT  : '//' .*? '\n' -> skip ;