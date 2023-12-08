#include "jlcxx/jlcxx.hpp"
// #include "CRPropa.h"

struct MyStruct { MyStruct() {} };

JLCXX_MODULE define_julia_module(jlcxx::Module& mod)
{
  mod.add_type<MyStruct>("MyStruct");
  mod.method("greet", []() {return "Hello";});
}