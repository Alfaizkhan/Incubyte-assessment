// String Calculator

int add(String numbers) {
  if (numbers.isEmpty) return 0;
  // Added Regex to matches comma OR new line
  Pattern delimiter = RegExp(r'[,\n]');
  String input = numbers;

  if (numbers.startsWith("//")) {
    var parts = numbers.split("\n");
    delimiter = parts[0].substring(2);
    input = parts[1]; // Get the remaining of the string
  }

  List<String> parts = input.split(delimiter);
  return parts.map(int.parse).reduce((a, b) => a + b);
}
