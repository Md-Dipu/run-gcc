#!/usr/bin/env bats

setup() {
  export valid_c_file="tests/test_files/hello.c"
  export valid_cpp_file="tests/test_files/hello.cpp"
  export invalid_file="tests/test_files/invalid.txt"
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

@test "Handle missing file" {
  run src/run-gcc missing.c
  [ "$status" -ne 0 ]
  [[ "$output" == *"File 'missing.c' does not exist" ]]
}

@test "Handle unsupported file type" {
  run src/run-gcc "$invalid_file"
  [ "$status" -ne 0 ]
  [[ "$output" == *"Unsupported file type 'txt'" ]]
}

@test "Handle missing argument" {
  run src/run-gcc
  [ "$status" -ne 0 ]
  [[ "$output" == *"Please specify a C/C++ file" ]]
}

@test "Handle compilation error in C file" {
  export invalid_c_file="tests/test_files/invalid.c"
  run src/run-gcc "$invalid_c_file"
  [ "$status" -ne 0 ]
  [[ "$output" == *"File '$invalid_c_file' does not exist" ]]
}

@test "Handle compilation error in C++ file" {
  export invalid_cpp_file="tests/test_files/invalid.cpp"
  run src/run-gcc "$invalid_cpp_file"
  [ "$status" -ne 0 ]
  [[ "$output" == *"File '$invalid_cpp_file' does not exist" ]]
}
