
// Generated from compilerv1.g4 by ANTLR 4.13.2

#pragma once


#include "antlr4-runtime.h"




class  compilerv1Lexer : public antlr4::Lexer {
public:
  enum {
    T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, T__6 = 7, 
    T__7 = 8, T__8 = 9, T__9 = 10, T__10 = 11, T__11 = 12, T__12 = 13, T__13 = 14, 
    T__14 = 15, T__15 = 16, T__16 = 17, T__17 = 18, T__18 = 19, T__19 = 20, 
    T__20 = 21, T__21 = 22, T__22 = 23, T__23 = 24, T__24 = 25, T__25 = 26, 
    T__26 = 27, T__27 = 28, T__28 = 29, T__29 = 30, T__30 = 31, T__31 = 32, 
    T__32 = 33, T__33 = 34, T__34 = 35, T__35 = 36, T__36 = 37, T__37 = 38, 
    T__38 = 39, T__39 = 40, T__40 = 41, T__41 = 42, T__42 = 43, T__43 = 44, 
    T__44 = 45, T__45 = 46, T__46 = 47, T__47 = 48, T__48 = 49, T__49 = 50, 
    T__50 = 51, T__51 = 52, T__52 = 53, T__53 = 54, T__54 = 55, T__55 = 56, 
    T__56 = 57, T__57 = 58, T__58 = 59, T__59 = 60, T__60 = 61, T__61 = 62, 
    T__62 = 63, T__63 = 64, T__64 = 65, T__65 = 66, T__66 = 67, T__67 = 68, 
    T__68 = 69, T__69 = 70, T__70 = 71, T__71 = 72, T__72 = 73, T__73 = 74, 
    T__74 = 75, T__75 = 76, T__76 = 77, T__77 = 78, T__78 = 79, IF = 80, 
    ELSE = 81, WHILE = 82, FOR = 83, LOOP = 84, IN = 85, SWITCH = 86, CASE = 87, 
    DEFAULT = 88, TRY = 89, CATCH = 90, TERMINALEXCEPTION = 91, AUTOCATCH = 92, 
    SUCCESS = 93, TRUE = 94, FALSE = 95, NULL_LITERAL = 96, TYPE = 97, FTYPE = 98, 
    CLSTYPE = 99, STATIC = 100, VIRTUAL = 101, INSTANCE_MODE = 102, INS = 103, 
    STAT = 104, ATO = 105, SRC = 106, ASG = 107, LTO = 108, MNT = 109, INDEF = 110, 
    ANNOT_OVERRIDE = 111, INLINE = 112, ASYNC = 113, INLINE_SEP = 114, OVERRIDE = 115, 
    SYSCALL = 116, ALL = 117, LET = 118, APND = 119, CONST = 120, NCONST = 121, 
    THREADMODE = 122, JOIN = 123, GLOBAL = 124, BRIDGE = 125, UNSAFE = 126, 
    BYPASS = 127, AUTOFMTDECLARE = 128, INDUCT = 129, RELEASE = 130, COMMUNAL = 131, 
    CMGLOBAL = 132, STDEF = 133, OPSTRUCT = 134, MEMSTRUCT = 135, SCHEDULE = 136, 
    MANDATORY = 137, DETATCH = 138, DETACH = 139, SCHVOID = 140, GC_NAME = 141, 
    GCMODE_NAME = 142, BORROW_CHECKER_NAME = 143, BORROW_CHECK_NAME = 144, 
    ID = 145, NATIVE = 146, INCLUSIVE = 147, LBRACE = 148, RBRACE = 149, 
    STRING = 150, TEMPLATE_STRING = 151, CHAR = 152, BYTE = 153, FLOAT = 154, 
    INT = 155, WS = 156, COMMENT = 157, BLOCK_COMMENT = 158
  };

  explicit compilerv1Lexer(antlr4::CharStream *input);

  ~compilerv1Lexer() override;


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


  std::string getGrammarFileName() const override;

  const std::vector<std::string>& getRuleNames() const override;

  const std::vector<std::string>& getChannelNames() const override;

  const std::vector<std::string>& getModeNames() const override;

  const antlr4::dfa::Vocabulary& getVocabulary() const override;

  antlr4::atn::SerializedATNView getSerializedATN() const override;

  const antlr4::atn::ATN& getATN() const override;

  void action(antlr4::RuleContext *context, size_t ruleIndex, size_t actionIndex) override;

  bool sempred(antlr4::RuleContext *_localctx, size_t ruleIndex, size_t predicateIndex) override;

  // By default the static state used to implement the lexer is lazily initialized during the first
  // call to the constructor. You can call this function if you wish to initialize the static state
  // ahead of time.
  static void initialize();

private:

  // Individual action functions triggered by action() above.
  void INLINEAction(antlr4::RuleContext *context, size_t actionIndex);
  void ASYNCAction(antlr4::RuleContext *context, size_t actionIndex);
  void INLINE_SEPAction(antlr4::RuleContext *context, size_t actionIndex);
  void IDAction(antlr4::RuleContext *context, size_t actionIndex);
  void NATIVEAction(antlr4::RuleContext *context, size_t actionIndex);
  void INCLUSIVEAction(antlr4::RuleContext *context, size_t actionIndex);

  // Individual semantic predicate functions triggered by sempred() above.
  bool INCLUSIVESempred(antlr4::RuleContext *_localctx, size_t predicateIndex);

};

