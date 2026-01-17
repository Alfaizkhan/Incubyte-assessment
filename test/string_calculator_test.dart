import 'package:incubyte_assessment/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('should return 0 for an empty string', () {
    expect(add(""), equals(0));
  });

  test('should return number itself for single number', () {
    expect(add("1"), equals(1));
  });

  test('should return sum of two numbers', () {
    expect(add("1,5"), equals(6));
  });

  test('should handle any amount of numbers', () {
    expect(add("1,2,3,4,5"), equals(15));
  });
}
