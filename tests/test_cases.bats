#!/usr/bin/env bats

setup() {
  export valid_c_file="tests/test_files/hello.c"
  export valid_cpp_file="tests/test_files/hello.cpp"
  export valid_c_with_input_file="tests/test_files/hello_with_input.c"
  export valid_cpp_with_input_file="tests/test_files/hello_with_input.cpp"
  export invalid_file="tests/test_files/invalid.txt"
  export invalid_c_file="tests/test_files/invalid.c"
  export invalid_cpp_file="tests/test_files/invalid.cpp"
  export input_file="tests/test_files/input.txt"
  export expected_output_file="tests/test_files/expected_output.txt"
  export wrong_output_file="tests/test_files/wrong_output.txt"
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

@test "Compile and run a valid C program with input and expected output" {
  run src/run-gcc "$valid_c_with_input_file" -i "$input_file" -e "$expected_output_file"
  [ "$status" -eq 0 ]
  [[ "$output" == *"Program output matches the expected output."* ]]
}

@test "Compile and run a valid C++ program with input and expected output" {
  run src/run-gcc "$valid_cpp_with_input_file" -i "$input_file" -e "$expected_output_file"
  [ "$status" -eq 0 ]
  [[ "$output" == *"Program output matches the expected output."* ]]
}

@test "Compile and run a valid C program with input and show diff on mismatch" {
  run src/run-gcc "$valid_c_with_input_file" -i "$input_file" -e "$wrong_output_file" -d
  [ "$status" -ne 0 ]
  [[ "$output" == *"Program output does not match the expected output."* ]]
  [[ "$output" == *"Difference:"* ]]
}

@test "Compile and run a valid C++ program with input and show diff on mismatch" {
  run src/run-gcc "$valid_cpp_with_input_file" -i "$input_file" -e "$wrong_output_file" -d
  [ "$status" -ne 0 ]
  [[ "$output" == *"Program output does not match the expected output."* ]]
  [[ "$output" == *"Difference:"* ]]
}
