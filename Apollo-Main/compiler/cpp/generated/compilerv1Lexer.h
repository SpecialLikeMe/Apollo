
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
    T__68 = 69, T__69 = 70, T__70 = 71, T__71 = 72, IF = 73, ELSE = 74, 
    WHILE = 75, FOR = 76, IN = 77, SWITCH = 78, CASE = 79, DEFAULT = 80, 
    TRY = 81, CATCH = 82, TERMINALEXCEPTION = 83, AUTOCATCH = 84, SUCCESS = 85, 
    TRUE = 86, FALSE = 87, NULL_LITERAL = 88, TYPE = 89, FTYPE = 90, CLSTYPE = 91, 
    STATIC = 92, VIRTUAL = 93, INSTANCE_MODE = 94, INS = 95, STAT = 96, 
    ATO = 97, SRC = 98, ASG = 99, LTO = 100, MNT = 101, INDEF = 102, ANNOT_OVERRIDE = 103, 
    INLINE = 104, ASYNC = 105, INLINE_SEP = 106, OVERRIDE = 107, SYSCALL = 108, 
    ALL = 109, LET = 110, APND = 111, CONST = 112, NCONST = 113, THREADMODE = 114, 
    JOIN = 115, GLOBAL = 116, BRIDGE = 117, UNSAFE = 118, BYPASS = 119, 
    AUTOFMTDECLARE = 120, INDUCT = 121, RELEASE = 122, COMMUNAL = 123, CMGLOBAL = 124, 
    STDEF = 125, OPSTRUCT = 126, MEMSTRUCT = 127, SCHEDULE = 128, MANDATORY = 129, 
    DETATCH = 130, DETACH = 131, SCHVOID = 132, GC_NAME = 133, GCMODE_NAME = 134, 
    BORROW_CHECKER_NAME = 135, BORROW_CHECK_NAME = 136, ID = 137, NATIVE = 138, 
    INCLUSIVE = 139, LBRACE = 140, RBRACE = 141, STRING = 142, TEMPLATE_STRING = 143, 
    CHAR = 144, BYTE = 145, FLOAT = 146, INT = 147, WS = 148, COMMENT = 149
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

