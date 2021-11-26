part of string_helpers;

///[firstToUpperCase] capitalize the first character of the given [string].
String firstToUpperCase(String string) {
  return firstChar(string).toUpperCase() + string.replaceRange(0, 1, '');
}

///[lastToUpperCase] capitalize the last character of the given [string].
String lastToUpperCase(String string) {
  return string.replaceRange(lastCharIndex(string), string.length, '') +
      lastChar(string).toUpperCase();
}

///[upperCamelCase] capitalize the first character words of the given [string].
///```dart
/// upperCamelCase('upper camel case') // 'Upper Camel Case'
///```
String upperCamelCase(String string) {
  string = string.toLowerCase().replaceAllMapped(
        RegExp('[a-z]+/*'),
        (Match match) => match[0]![0].toUpperCase() + match[0]!.substring(1),
      );
  return string[0] + string.substring(1);
}

///[upperUnderscoreCase] capitalize the all characters and replace whitespaces with underscore '_'.
///```dart
/// upperCamelCase('upper camel case') // 'UPPER_CAMEL_CASE'
///```
String upperUnderscoreCase(String string) {
  if (isUpperCase(string)) return string.replaceAll(' ', '_');
  return string.toUpperCase().replaceAll(' ', '_');
}
