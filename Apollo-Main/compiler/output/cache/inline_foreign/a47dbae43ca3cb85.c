#include <stdbool.h>
#include <stdint.h>
int go_value = 12;
int go_read() {
 return go_value;
}
int* __apollo_inline_get_inline_2_5_0_go_value(void) { return &go_value; }
