// RUN: not %clang_cc1 %s -fmessage-length=40 -fcolor-diagnostics -fno-show-source-location -Wunused-value -o - 2>&1 | FileCheck %s

// REQUIRES: ansi-escape-sequences

int main() {
          1 +                                                        + if;
  // CHECK: expected expression
  // CHECK-NEXT: ...+ [[MAGENTA:.\[0;34m]]if[[RESET:.\[0m]];

    /*😂*/1 +                                                        + if;
  // CHECK: expected expression
  // CHECK-NEXT: ...+ [[MAGENTA:.\[0;34m]]if[[RESET:.\[0m]];

  a + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
  // CHECK: use of undeclared identifier
  // CHECK-NEXT: a + [[GREEN:.\[0;32m]]1[[RESET]] + [[GREEN]]1[[RESET]] + [[GREEN]]1[[RESET]] + [[GREEN]]1[[RESET]] + [[GREEN]]1[[RESET]] ...


  /*😂😂😂*/ a + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
  // CHECK: use of undeclared identifier
  // CHECK-NEXT: [[YELLOW:.\[0;33m]]/*😂😂😂*/[[RESET]] a + [[GREEN:.\[0;32m]]1[[RESET]] + [[GREEN]]1[[RESET]] ...

  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
  // CHECK: [[GREEN:.\[0;32m]]"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"[[RESET]];

  "😂xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
  // CHECK: [[GREEN:.\[0;32m]]"😂xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"[[RESET]];
}


