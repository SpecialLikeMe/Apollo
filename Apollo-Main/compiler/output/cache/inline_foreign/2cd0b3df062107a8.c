#include <stdbool.h>
#include <stdint.h>
extern int go_read();
extern int* __apollo_inline_get_inline_2_5_0_go_value(void);
#define go_value (*__apollo_inline_get_inline_2_5_0_go_value())
int ts_value = 13;
int ts_read() {
 return ts_value;
}
int* __apollo_inline_get_inline_8_5_1_ts_value(void) { return &ts_value; }
