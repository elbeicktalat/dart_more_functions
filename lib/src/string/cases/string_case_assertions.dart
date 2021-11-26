part of string_helpers;

///[isUpperCase] check if the entire characters of the given [string] is uppercase.
///```dart
/// isUpperCase('Dart') // false
/// isUpperCase('DARt') // false
/// isUpperCase('DART') // true
///```
bool isUpperCase(String string) {
  return string == string.toUpperCase();
}

///[isLowerCase] check if the entire characters of the given [string] is lowercase.
///```dart
/// isLowerCase('Dart') // false
/// isLowerCase('darT') // false
/// isLowerCase('dart') // true
///```
bool isLowerCase(String string) {
  return string == string.toLowerCase();
}

///[firstIsUpper] check if the first character of the given [string] is uppercase.
///```dart
/// firstIsUpper('dart') // false
/// firstIsUpper('dART') // false
/// firstIsUpper('Dart') // true
///```
bool firstIsUpper(String string) {
  return firstChar(string) == firstChar(string).toUpperCase();
}

///[lastIsUpper] check if the last character of the given [string] is uppercase.
///```dart
/// lastIsUpper('dart') // false
/// lastIsUpper('DARt') // false
/// lastIsUpper('darT') // true
///```
bool lastIsUpper(String string) {
  return lastChar(string) == lastChar(string).toUpperCase();
}

///[firstIsLower] check if the first character of the given [string] is lowercase.
///```dart
/// firstIsUpper('dart') // false
/// firstIsUpper('dART') // false
/// firstIsUpper('Dart') // true
///```
bool firstIsLower(String string) {
  return firstChar(string) == firstChar(string).toLowerCase();
}

///[lastIsLower] check if the last character of the given [string] is lowercase.
///```dart
/// lastIsLower('DART') // false
/// lastIsLower('darT') // false
/// lastIsLower('Dart') // true
///```
bool lastIsLower(String string) {
  return lastChar(string) == lastChar(string).toLowerCase();
}

///[charAtIsUpper] check if character at that specific [index] of the given [string] is uppercase.
///```dart
/// charAtIsUpper('Dart', 1) // false
/// charAtIsUpper('dART', 1) // true
///```
bool charAtIsUpper(String string, int index) {
  return charAt(string, index) == charAt(string, index).toUpperCase();
}

///[charAtIsLower] check if character at that specific [index] of the given [string] is lowercase.
///```dart
/// charAtIsUpper('Dart', 1) // true
/// charAtIsUpper('dART', 1) // false
///```
bool charAtIsLower(String string, int index) {
  return charAt(string, index) == charAt(string, index).toLowerCase();
}
