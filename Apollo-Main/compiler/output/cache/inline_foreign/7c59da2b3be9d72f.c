#include <stdbool.h>
#include <stdint.h>
int ts_value = 13;
int ts_read() {
 return ts_value;
}
int* __apollo_inline_get_inline_2_5_0_ts_value(void) { return &ts_value; }
