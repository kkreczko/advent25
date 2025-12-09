#include <fstream>
#include <iostream>

int main() {
  char direction;
  int numba;
  int dialPosition = 50;
  int password = 0;

  std::fstream file("./first/input.txt");

  while (file >> direction >> numba) {
    if (direction == 'L')
      dialPosition = (dialPosition - numba + 100) % 100;
    else
      dialPosition = (dialPosition + numba) % 100;

    if (dialPosition == 0)
      password += 1;
  }

  std::cout << password << '\n';

  return 0;
}
