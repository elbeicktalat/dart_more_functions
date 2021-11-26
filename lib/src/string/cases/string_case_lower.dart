part of string_helpers;

///[firstToLowerCase] make minuscule the first character of the given [string].
String firstToLowerCase(String string) {
  return firstChar(string).toLowerCase() + string.replaceRange(0, 1, '');
}

///[lastToLowerCase] make minuscule the last character of the given [string].
String lastToLowerCase(String string) {
  return string.replaceRange(lastCharIndex(string), string.length, '') +
      firstChar(string).toLowerCase();
}

///[lowerCamelCase] make minuscule the first word character
/// and capitalize the first character of the next words.
///```dart
/// lowerCamelCase('Lower camel case') // 'lower Camel Case'
/// lowerCamelCase('Lower camel case, and so on') // 'lower Camel Case, And So On'
///```
String lowerCamelCase(String string) {
  string = string.toLowerCase().replaceAllMapped(
        RegExp('[a-z]+/*'),
        (Match match) => match[0]![0].toUpperCase() + match[0]!.substring(1),
      );
  return string[0].toLowerCase() + string.substring(1);
}


///[lowerUnderscoreCase] make minuscule all characters and replace whitespaces with underscore '_'.
///```dart
/// lowerUnderscoreCase('lower camel case') // 'lower_camel_case'
/// lowerUnderscoreCase('LOWER CAMEL CASE') // 'lower_camel_case'
///```
String lowerUnderscoreCase(String string) {
  if (isLowerCase(string)) return string.replaceAll(' ', '_');
  return string.toLowerCase().replaceAll(' ', '_');
}
