
namespace __apollo_inline_inline_2_5_0 {
        int foreign_value = 4;
        int read_value() { return foreign_value; }
    
}
extern "C" int read_value() { return __apollo_inline_inline_2_5_0::read_value(); }
extern "C" int* __apollo_inline_get_inline_2_5_0_foreign_value() { return &__apollo_inline_inline_2_5_0::foreign_value; }
