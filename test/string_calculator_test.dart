import 'package:incubyte_assessment/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('should return 0 for an empty string', () {
    expect(add(""), equals(0));
  });
}