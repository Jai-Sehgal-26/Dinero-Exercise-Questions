import "dart:io";

String reverse(String s) {
  List<String> L = s.split(" ");
  L = L.reversed.toList();
  s = L.join(" ");
  return s;
}

void main(List<String> arguments) {
  String? ans;
  print("Enter the long string");
  String? s = stdin.readLineSync();

  if (s != null) {
    ans = reverse(s);
  }
  print(ans);
}
