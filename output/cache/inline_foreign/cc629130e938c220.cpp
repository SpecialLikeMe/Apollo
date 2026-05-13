
namespace __apollo_inline_inline_2_5_0 {
        int four() { return 4; }
        int foreignValue = 7;
    
}
extern "C" int four() { return __apollo_inline_inline_2_5_0::four(); }
extern "C" int* __apollo_inline_get_inline_2_5_0_foreignValue() { return &__apollo_inline_inline_2_5_0::foreignValue; }
