#!/usr/bin/env bats

setup() {
  export invalid_file="tests/test_files/invalid.txt"
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
