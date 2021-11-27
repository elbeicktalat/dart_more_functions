part of string_helpers;

///[getFirstToLowerCase] makes minuscule the first character of the given [string].
///
///In case [allWords] set to true it will minuscule the first character of all words.
///
/// Example:
///```dart
/// //makes minuscule only first character of first word.
/// getFirstToLowerCase('FIRST CHAR TO LOWER') // 'fIRST CHAR TO LOWER'
///
/// //capitalize only first character of every word.
/// getFirstToLowerCase('FIRST CHAR TO LOWER', allWords: true) // 'fIRST cHAR tO lOWER'
///```
String getFirstToLowerCase(
  String string, {
  bool allWords = false,
}) {
  string = string.trim();
  if (allWords) {
    final List<String> words = string.split(' ');
    final List<String> lowercased = [];
    for (String word in words) {
      lowercased.add(getFirstToLowerCase(word));
    }
    return lowercased.join(' ');
  }
  return getFirstChar(string).toLowerCase() + string.substring(1);
}

///[getLastToLowerCase] makes minuscule the last character of the given [string].
///
///In case [allWords] set to true it will make minuscule the last character of all words.
///
/// Example:
///```dart
/// //makes minuscule only last character of last word.
/// getLastToLowerCase('LAST TO LOWERCASE') // 'LAST TO LOWERCASe'
///
/// //makes minuscule only last character of every word.
/// getLastToLowerCase('LAST TO LOWERCASE') // 'LASt To LOWERCASe'
///```
String getLastToLowerCase(
  String string, {
  bool allWords = false,
}) {
  string = string.trim();
  if (allWords) {
    final List<String> words = string.split(' ');
    final List<String> lowercased = [];
    for (String word in words) {
      lowercased.add(getLastToLowerCase(word));
    }
    return lowercased.join(' ');
  }
  return string.substring(0, getLastCharIndex(string)) +
      getLastChar(string).toLowerCase();
}

///[getLowerCamelCase] makes minuscule the first word character
/// and capitalize the first character of the next words.
///
///By default words will have a whitespace between each other,
/// if [attached] set to true the result will be concatenate.
///
/// Also you are able to chios the character in between words by using [betweenWords].
/// Examples:
///
///```dart
/// getLowerCamelCase('LOWER CAMEL CASE') // 'lower Camel Case'
/// getLowerCamelCase('LOWER CAMEL CASE', attached: true) // 'lowerCamelCase'
/// getLowerCamelCase('LOWER CAMEL CASE', attached: true, betweenWords: '/') // 'lower/Camel/Case'
/// getLowerCamelCase('LOWER CAMEL CASE', attached: true, betweenWords: '  /  ') // 'lower/Camel/Case'
/// getLowerCamelCase('LOWER CAMEL CASE', betweenWords: '// ') // 'lower// Camel// Case'
///```
String getLowerCamelCase(
  String string, {
  bool attached = false,
  String betweenWords = '',
}) {
  string = string.trim().toLowerCase();
  final List<String> words = string.split(' ');
  final List<String> capitalized = [];
  for (String word in words) {
    capitalized.add(getFirstToUpperCase(word));
  }
  final String _firstChar = getFirstChar(capitalized.first).toLowerCase();
  if (attached) {
    betweenWords = betweenWords.trim();
    return _firstChar + capitalized.join(betweenWords).substring(1);
  }
  return _firstChar + capitalized.join(betweenWords + ' ').substring(1);
}

///[getLowerSnakeCase] make minuscule all characters and replace whitespaces with underscore '_'.
///```dart
/// getLowerSnakeCase('lower underscore case') // 'lower_underscore_case'
/// getLowerSnakeCase('LOWER UNDERSCORE CASE') // 'lower_underscore_case'
///```
String getLowerSnakeCase(String string) {
  if (string.isLowerCase) return string.replaceAll(' ', '_');
  return string.toLowerCase().replaceAll(' ', '_');
}
