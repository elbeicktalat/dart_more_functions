part of string_helpers;

///[firstToLowerCase] makes minuscule the first character of the given [string].
///
///In case [allWords] set to true it will minuscule the first character of all words.
///
/// Example:
///```dart
/// //makes minuscule only first character of first word.
/// firstToLowerCase('FIRST CHAR TO LOWER') // 'fIRST CHAR TO LOWER'
///
/// //capitalize only first character of every word.
/// firstToLowerCase('FIRST CHAR TO LOWER', allWords: true) // 'fIRST cHAR tO lOWER'
///```
String firstToLowerCase(
  String string, {
  bool allWords = false,
}) {
  string = string.trim();
  if (allWords) {
    final List<String> words = string.split(' ');
    final List<String> lowercased = [];
    for (String word in words) {
      lowercased.add(firstToLowerCase(word));
    }
    return lowercased.join(' ');
  }
  return firstChar(string).toLowerCase() + string.substring(1);
}

///[lastToLowerCase] makes minuscule the last character of the given [string].
///
///In case [allWords] set to true it will make minuscule the last character of all words.
///
/// Example:
///```dart
/// //makes minuscule only last character of last word.
/// lastToUpperCase('LAST TO LOWERCASE') // 'LAST TO LOWERCASe'
///
/// //makes minuscule only last character of every word.
/// lastToUpperCase('LAST TO LOWERCASE') // 'LASt To LOWERCASe'
///```
String lastToLowerCase(
  String string, {
  bool allWords = false,
}) {
  string = string.trim();
  if (allWords) {
    final List<String> words = string.split(' ');
    final List<String> lowercased = [];
    for (String word in words) {
      lowercased.add(lastToLowerCase(word));
    }
    return lowercased.join(' ');
  }
  return string.substring(0, lastCharIndex(string)) +
      lastChar(string).toLowerCase();
}

///[lowerCamelCase] makes minuscule the first word character
/// and capitalize the first character of the next words.
///
///By default words will have a whitespace between each other,
/// if [attached] set to true the result will be concatenate.
///
/// Also you are able to chios the character in between words by using [betweenWords].
/// Examples:
///
///```dart
/// lowerCamelCase('LOWER CAMEL CASE') // 'lower Camel Case'
/// lowerCamelCase('LOWER CAMEL CASE', attached: true) // 'lowerCamelCase'
/// lowerCamelCase('LOWER CAMEL CASE', attached: true, betweenWords: '/') // 'lower/Camel/Case'
/// lowerCamelCase('LOWER CAMEL CASE', attached: true, betweenWords: '  /  ') // 'lower/Camel/Case'
/// lowerCamelCase('LOWER CAMEL CASE', betweenWords: '// ') // 'lower// Camel// Case'
///```
String lowerCamelCase(
  String string, {
  bool attached = false,
  String betweenWords = '',
}) {
  string = string.trim().toLowerCase();
  final List<String> words = string.split(' ');
  final List<String> capitalized = [];
  for (String word in words) {
    capitalized.add(firstToUpperCase(word));
  }
  final String _firstChar = firstChar(capitalized.first).toLowerCase();
  if (attached) {
    betweenWords = betweenWords.trim();
    return _firstChar + capitalized.join(betweenWords).substring(1);
  }
  return _firstChar + capitalized.join(betweenWords + ' ').substring(1);
}

///[lowerUnderscoreCase] make minuscule all characters and replace whitespaces with underscore '_'.
///```dart
/// lowerUnderscoreCase('lower underscore case') // 'lower_underscore_case'
/// lowerUnderscoreCase('LOWER UNDERSCORE CASE') // 'lower_underscore_case'
///```
String lowerUnderscoreCase(String string) {
  if (isLowerCase(string)) return string.replaceAll(' ', '_');
  return string.toLowerCase().replaceAll(' ', '_');
}
