#!/usr/bin/env bats

setup() {
  export TEST_FILE="tests/test_files/hello.c"
}

@test "Compile and run C program" {
  run src/run-gcc "$TEST_FILE"
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "Hello World!" ]
}

@test "Handle missing file" {
  run src/run-gcc missing.c
  [ "$status" -ne 0 ]
  [[ "$output" == "Error: File 'missing.c' does not exist" ]]
}

@test "Handle missing argument" {
  run src/run-gcc
  [ "$status" -ne 0 ]
  [[ "$output" == *"Please specify a C/C++ file"* ]]
}
