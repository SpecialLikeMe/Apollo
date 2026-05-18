
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
    T__68 = 69, T__69 = 70, T__70 = 71, IF = 72, ELSE = 73, WHILE = 74, 
    FOR = 75, IN = 76, SWITCH = 77, CASE = 78, DEFAULT = 79, TRY = 80, CATCH = 81, 
    TERMINALEXCEPTION = 82, AUTOCATCH = 83, SUCCESS = 84, TYPE = 85, FTYPE = 86, 
    CLSTYPE = 87, STATIC = 88, VIRTUAL = 89, INSTANCE_MODE = 90, INS = 91, 
    STAT = 92, ATO = 93, SRC = 94, ASG = 95, LTO = 96, MNT = 97, INDEF = 98, 
    ANNOT_OVERRIDE = 99, INLINE = 100, ASYNC = 101, INLINE_SEP = 102, OVERRIDE = 103, 
    SYSCALL = 104, ALL = 105, LET = 106, APND = 107, CONST = 108, NCONST = 109, 
    THREADMODE = 110, JOIN = 111, GLOBAL = 112, BRIDGE = 113, UNSAFE = 114, 
    BYPASS = 115, AUTOFMTDECLARE = 116, INDUCT = 117, RELEASE = 118, COMMUNAL = 119, 
    CMGLOBAL = 120, STDEF = 121, OPSTRUCT = 122, MEMSTRUCT = 123, SCHEDULE = 124, 
    MANDATORY = 125, DETATCH = 126, DETACH = 127, SCHVOID = 128, GC_NAME = 129, 
    GCMODE_NAME = 130, BORROW_CHECKER_NAME = 131, BORROW_CHECK_NAME = 132, 
    ID = 133, NATIVE = 134, INCLUSIVE = 135, LBRACE = 136, RBRACE = 137, 
    STRING = 138, TEMPLATE_STRING = 139, INT = 140, WS = 141, COMMENT = 142
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

