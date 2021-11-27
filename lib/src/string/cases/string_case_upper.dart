part of string_helpers;

///[firstToUpperCase] capitalize the first character of the given [string].
///
///In case [allWords] set to true it will capitalize the first character of all words,
///by default [allWords] is false.
///
/// Example:
///```dart
/// //capitalize only first character of first word.
///firstToUpperCase('first char to upper') // 'First char to upper'
///
/// //capitalize only first character of every word.
///firstToUpperCase('first char to upper', allWords: true) // 'First Char To Upper'
///```
String firstToUpperCase(
  String string, {
  bool allWords = false,
}) {
  string = string.trim();
  if (allWords) {
    final List<String> words = string.split(' ');
    final List<String> capitalized = [];
    for (String word in words) {
      capitalized.add(firstToUpperCase(word));
    }
    return capitalized.join(' ');
  }
  return firstChar(string).toUpperCase() + string.substring(1);
}

///[lastToUpperCase] capitalize the last character of the given [string].
///
///In case [allWords] set to true it will capitalize the last character of all words,
///by default [allWords] is false.
///
/// Example:
///```dart
/// //capitalize only last character of first word.
///lastToUpperCase('last char to upper') // 'first char to uppeR'
///
/// //capitalize only last character of every word.
///lastToUpperCase('last char to upper', allWords: true) // 'lasT chaR tO uppeR'
///```
String lastToUpperCase(
  String string, {
  bool allWords = false,
}) {
  string = string.trim();
  if (allWords) {
    final List<String> words = string.split(' ');
    final List<String> capitalized = [];
    for (String word in words) {
      capitalized.add(lastToUpperCase(word));
    }
    return capitalized.join(' ');
  }
  return string.substring(0, lastCharIndex(string)) +
      lastChar(string).toUpperCase();
}

///[upperCamelCase] capitalize the first character words of the given [string].
///
///By default words will have a whitespace between each other,
/// if [attached] set to true the result wil be concatenate.
///
/// Also you are able to chios the character in between words by using [betweenWords].
/// Examples:
///
///```dart
/// upperCamelCase('upper camel case') // 'Upper Camel Case'
/// upperCamelCase('upper camel case', attached: true) // 'UpperCamelCase'
/// upperCamelCase('upper camel case', attached: true, betweenWords: '/') // 'Upper/Camel/Case'
/// upperCamelCase('upper camel case', attached: true, betweenWords: '//') // 'Upper//Camel//Case'
///```
String upperCamelCase(
  String string, {
  bool attached = false,
  String betweenWords = '',
}) {
  string = string.trim();
  final List<String> words = string.split(' ');
  final List<String> capitalized = [];
  for (String word in words) {
    capitalized.add(firstToUpperCase(word));
  }
  if (attached) return capitalized.join(betweenWords);

  return capitalized.join(betweenWords + ' ');
}

///[upperUnderscoreCase] capitalize the all characters and replace whitespaces with underscore '_'.
///```dart
/// upperUnderscoreCase('upper camel case') // 'UPPER_CAMEL_CASE'
///```
String upperUnderscoreCase(String string) {
  if (isUpperCase(string)) return string.replaceAll(' ', '_');
  return string.toUpperCase().replaceAll(' ', '_');
}
