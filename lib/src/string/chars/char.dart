part of string_helpers;

///[firstChar()] returns the first character of the given [string],
/// without leading and trailing whitespace.
/// ```dart
/// firstChar('dart') // returns 'd'
/// firstChar('  dart') // returns 'd'
/// firstChar('dart  ') // returns 'd'
/// ```
String firstChar(String string) {
  return String.fromCharCode(string.trim().runes.first);
}

///[lastChar()] returns the last character of the given [string],
/// without leading and trailing whitespace.
/// ```dart
/// lastChar('dart') // returns 't'
/// lastChar('dart  ') // returns 't'
/// lastChar('  dart') // returns 't'
/// ```
String lastChar(String string) {
  return String.fromCharCode(string.trim().runes.last);
}

///[lastCharIndex] returns the index of the last character of given [string],
/// without leading and trailing whitespace counting.
int lastCharIndex(String string) {
  return string.trim().length - 1;
}

///[charAt()] returns character at that specific [index] of the given [string],
/// without leading and trailing whitespace.
/// ```dart
/// charAt('dart', 1) // returns 'a'
/// charAt('  dart   ', 1) // returns 'a'
/// ```
String charAt(String string, int index) {
  return String.fromCharCode(string.trim().runes.elementAt(index));
}
