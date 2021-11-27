part of string_helpers;

///[getIsUpperCase] check if the entire characters of the given [string] is uppercase.
///```dart
/// isUpper('Dart') // false
/// isUpper('DARt') // false
/// isUpper('DART') // true
///```
bool getIsUpperCase(String string) {
  return string == string.toUpperCase();
}

///[getIsLowerCase] check if the entire characters of the given [string] is lowercase.
///```dart
/// isLower('Dart') // false
/// isLower('darT') // false
/// isLower('dart') // true
///```
bool getIsLowerCase(String string) {
  return string == string.toLowerCase();
}

///[getFirstIsUpperCase] check if the first character of the given [string] is uppercase.
///```dart
/// firstIsUpper('dart') // false
/// firstIsUpper('dART') // false
/// firstIsUpper('Dart') // true
///```
bool getFirstIsUpperCase(String string) {
  return getFirstChar(string) == getFirstChar(string).toUpperCase();
}

///[getLastIsUpperCase] check if the last character of the given [string] is uppercase.
///```dart
/// lastIsUpper('dart') // false
/// lastIsUpper('DARt') // false
/// lastIsUpper('darT') // true
///```
bool getLastIsUpperCase(String string) {
  return getLastChar(string) == getLastChar(string).toUpperCase();
}

///[getFirstIsLowerCase] check if the first character of the given [string] is lowercase.
///```dart
/// firstIsLower('DART') // false
/// firstIsLower('Dart') // false
/// firstIsLower('darT') // true
///```
bool getFirstIsLowerCase(String string) {
  return getFirstChar(string) == getFirstChar(string).toLowerCase();
}

///[getLastIsLowerCase] check if the last character of the given [string] is lowercase.
///```dart
/// lastIsLower('DART') // false
/// lastIsLower('darT') // false
/// lastIsLower('Dart') // true
///```
bool getLastIsLowerCase(String string) {
  return getLastChar(string) == getLastChar(string).toLowerCase();
}

///[getCharAtIsUpperCase] check if character at that specific [index] of the given [string] is uppercase.
///```dart
/// charAtIsUpper('Dart', 1) // false
/// charAtIsUpper('dART', 1) // true
///```
bool getCharAtIsUpperCase(String string, int index) {
  return getCharAt(string, index) == getCharAt(string, index).toUpperCase();
}

///[getCharAtIsLowerCase] check if character at that specific [index] of the given [string] is lowercase.
///```dart
/// charAtIsUpper('Dart', 1) // true
/// charAtIsUpper('dART', 1) // false
///```
bool getCharAtIsLowerCase(String string, int index) {
  return getCharAt(string, index) == getCharAt(string, index).toLowerCase();
}
