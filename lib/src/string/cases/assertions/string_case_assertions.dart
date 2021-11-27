part of string_helpers;

///[getIsUpperCase()] check if the entire characters of the given [string] is uppercase.
///```dart
/// isUpper('Dart') // false
/// isUpper('DARt') // false
/// isUpper('DART') // true
///```
bool funIsUpperCase(String string) {
  return string == string.toUpperCase();
}

///[getIsLowerCase()] check if the entire characters of the given [string] is lowercase.
///```dart
/// isLower('Dart') // false
/// isLower('darT') // false
/// isLower('dart') // true
///```
bool funIsLowerCase(String string) {
  return string == string.toLowerCase();
}

///[getFirstIsUpperCase()] check if the first character of the given [string] is uppercase.
///```dart
/// firstIsUpper('dart') // false
/// firstIsUpper('dART') // false
/// firstIsUpper('Dart') // true
///```
bool funFirstIsUpperCase(String string) {
  return firstChar(string) == firstChar(string).toUpperCase();
}

///[getLastIsUpperCase()] check if the last character of the given [string] is uppercase.
///```dart
/// lastIsUpper('dart') // false
/// lastIsUpper('DARt') // false
/// lastIsUpper('darT') // true
///```
bool funLastIsUpperCase(String string) {
  return lastChar(string) == lastChar(string).toUpperCase();
}

///[getFirstIsLowerCase()] check if the first character of the given [string] is lowercase.
///```dart
/// firstIsLower('DART') // false
/// firstIsLower('Dart') // false
/// firstIsLower('darT') // true
///```
bool funFirstIsLowerCase(String string) {
  return firstChar(string) == firstChar(string).toLowerCase();
}

///[getLastIsLowerCase()] check if the last character of the given [string] is lowercase.
///```dart
/// lastIsLower('DART') // false
/// lastIsLower('darT') // false
/// lastIsLower('Dart') // true
///```
bool funLastIsLowerCase(String string) {
  return lastChar(string) == lastChar(string).toLowerCase();
}

///[getCharAtIsUpperCase()] check if character at that specific [index] of the given [string] is uppercase.
///```dart
/// charAtIsUpper('Dart', 1) // false
/// charAtIsUpper('dART', 1) // true
///```
bool funCharAtIsUpperCase(String string, int index) {
  return charAt(string, index) == charAt(string, index).toUpperCase();
}

///[charAtIsLower()] check if character at that specific [index] of the given [string] is lowercase.
///```dart
/// charAtIsUpper('Dart', 1) // true
/// charAtIsUpper('dART', 1) // false
///```
bool funCharAtIsLowerCase(String string, int index) {
  return charAt(string, index) == charAt(string, index).toLowerCase();
}
