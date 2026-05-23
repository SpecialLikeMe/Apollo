
extern int read_value();
extern int* __apollo_inline_get_inline_2_5_0_foreign_value(void);
extern "C" void __apollo_inline_run_inline_10_9_1() {
int foreign_value = *__apollo_inline_get_inline_2_5_0_foreign_value();
foreign_value = read_value() + 3;
*__apollo_inline_get_inline_2_5_0_foreign_value() = foreign_value;
}
