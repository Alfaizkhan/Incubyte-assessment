// String Calculator

int add(String numbers) {
  if (numbers.isEmpty) return 0;
  // Added Regex to matches comma OR new line
  List<String> parts = numbers.split(RegExp(r'[,\n]'));
  return parts.map(int.parse).reduce((a, b) => a + b);
}
