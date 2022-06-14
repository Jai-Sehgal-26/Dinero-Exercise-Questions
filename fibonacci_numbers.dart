import "dart:io";

int fibonacci(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    int ans = fibonacci(n - 1) + fibonacci(n - 2);
    return ans;
  }
}

void main(List<String> arguments) {
  print("Enter the number");

  String? s = stdin.readLineSync();
  if (s != null) {
    int num = int.parse(s);
    print("The first ${num} fibonacci numbers are");
    for (int i = 0; i < num; i++) {
      int x = fibonacci(i + 1);
      print(x);
    }
  }
}
