part of string_helpers;

///[firstChar()] returns the first character of the given [string],
/// without leading and trailing whitespace.
/// ```dart
/// firstChar('dart') // returns 'd'
/// firstChar('  dart') // returns 'd'
/// firstChar('dart  ') // returns 'd'
/// ```
String getFirstChar(String string) {
  return String.fromCharCode(string.trim().runes.first);
}

///[lastChar()] returns the last character of the given [string],
/// without leading and trailing whitespace.
/// ```dart
/// lastChar('dart') // returns 't'
/// lastChar('dart  ') // returns 't'
/// lastChar('  dart') // returns 't'
/// ```
String getLastChar(String string) {
  return String.fromCharCode(string.trim().runes.last);
}

///[getLastCharIndex] returns the index of the last character of given [string],
/// without leading and trailing whitespace counting.
int getLastCharIndex(String string) {
  return string.trim().length - 1;
}

///[charAt()] returns character at that specific [index] of the given [string],
/// without leading and trailing whitespace.
/// ```dart
/// charAt('dart', 1) // returns 'a'
/// charAt('  dart   ', 1) // returns 'a'
/// ```
String getCharAt(String string, int index) {
  return String.fromCharCode(string.trim().runes.elementAt(index));
}
