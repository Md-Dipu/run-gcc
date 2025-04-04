#include <iostream>
#include <string>

int main() {
    std::string input;
    if (std::getline(std::cin, input)) {
        std::cout << "Input received: " << input << std::endl;
    }
    return 0;
}