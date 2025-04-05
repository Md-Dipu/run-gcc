#!/usr/bin/env bats

setup() {
  export valid_c_file="tests/test_files/hello.c"
  export valid_cpp_file="tests/test_files/hello.cpp"
}

@test "Compile and run a valid C program" {
  run src/run-gcc "$valid_c_file"
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "Hello World!" ]
}

@test "Compile and run a valid C++ program" {
  run src/run-gcc "$valid_cpp_file"
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "Hello World!" ]
}
