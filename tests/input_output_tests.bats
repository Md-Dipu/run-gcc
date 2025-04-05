#!/usr/bin/env bats

setup() {
  export valid_c_with_input_file="tests/test_files/hello_with_input.c"
  export valid_cpp_with_input_file="tests/test_files/hello_with_input.cpp"
  export input_file="tests/test_files/input.txt"
  export expected_output_file="tests/test_files/expected_output.txt"
  export wrong_output_file="tests/test_files/wrong_output.txt"
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
