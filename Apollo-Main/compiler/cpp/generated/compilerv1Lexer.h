
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
    IF = 75, ELSE = 76, WHILE = 77, FOR = 78, IN = 79, SWITCH = 80, CASE = 81, 
    DEFAULT = 82, TRY = 83, CATCH = 84, TERMINALEXCEPTION = 85, AUTOCATCH = 86, 
    SUCCESS = 87, TRUE = 88, FALSE = 89, NULL_LITERAL = 90, TYPE = 91, FTYPE = 92, 
    CLSTYPE = 93, STATIC = 94, VIRTUAL = 95, INSTANCE_MODE = 96, INS = 97, 
    STAT = 98, ATO = 99, SRC = 100, ASG = 101, LTO = 102, MNT = 103, INDEF = 104, 
    ANNOT_OVERRIDE = 105, INLINE = 106, ASYNC = 107, INLINE_SEP = 108, OVERRIDE = 109, 
    SYSCALL = 110, ALL = 111, LET = 112, APND = 113, CONST = 114, NCONST = 115, 
    THREADMODE = 116, JOIN = 117, GLOBAL = 118, BRIDGE = 119, UNSAFE = 120, 
    BYPASS = 121, AUTOFMTDECLARE = 122, INDUCT = 123, RELEASE = 124, COMMUNAL = 125, 
    CMGLOBAL = 126, STDEF = 127, OPSTRUCT = 128, MEMSTRUCT = 129, SCHEDULE = 130, 
    MANDATORY = 131, DETATCH = 132, DETACH = 133, SCHVOID = 134, GC_NAME = 135, 
    GCMODE_NAME = 136, BORROW_CHECKER_NAME = 137, BORROW_CHECK_NAME = 138, 
    ID = 139, NATIVE = 140, INCLUSIVE = 141, LBRACE = 142, RBRACE = 143, 
    STRING = 144, TEMPLATE_STRING = 145, CHAR = 146, BYTE = 147, FLOAT = 148, 
    INT = 149, WS = 150, COMMENT = 151
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

