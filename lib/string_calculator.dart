// String Calculator

int add(String numbers) {
  if (numbers.isEmpty) return 0;
  // Added Regex to matches comma OR new line
  Pattern delimiter = RegExp(r'[,\n]');
  String input = numbers;

  if (numbers.startsWith("//")) {
    var parts = numbers.split("\n");
    delimiter = parts[0].substring(2);
    input = parts[1];
  }

  var num = input.split(delimiter).map(int.parse).toList();

  var negatives = num.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception("negative numbers not allowed ${negatives.join(', ')}");
  }

  return num.reduce((a, b) => a + b);
}
