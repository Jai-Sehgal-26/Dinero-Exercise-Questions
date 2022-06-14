import "dart:io";

bool prime(int n) {
  if (n <= 1) return false;

  int flag = 0;
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      flag = 1;
      break;
    }
  }
  if (flag == 0) {
    return true;
  } else {
    return false;
  }
}

void main(List<String> arguments) {
  print("Enter the number");
  String? s = stdin.readLineSync();
  if (s != null) {
    int num = int.parse(s);
    if (prime((num))) {
      print("It is a prime number");
    } else {
      print("It is not a prime number");
    }
  }
}
