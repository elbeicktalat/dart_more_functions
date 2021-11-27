# more_functions

[![Pub Version](https://img.shields.io/pub/v/more_functions?color=blue&logo=dart)](https://pub.dev/packages/more_functions)
[![Github stars](https://img.shields.io/github/stars/elbeicktalat/dart_more_functions?logo=github)](https://github.com/elbeicktalat/dart_more_functions)
[![License Style](https://img.shields.io/github/license/elbeicktalat/dart_more_functions)](https://github.com/elbeicktalat/dart_more_functions/blob/main/LICENSE)

A dart package which provides a lot of helpers functions for easy development.

## Installation

1) Add this to your packages pubspec.yaml file:

```yaml
dependencies:
  more_functions: <^last-version>
```

2) Install it You could run pub get:

```bash
$ dart pub get
```

3) Import it Now in Dart code, you can use:

```dart
import 'package:more_functions/more_functions.dart';
```

## Overview

We support two types of Functions: `Regular` and `extension`.

List of Helpers functions type:

1. [String](#string)

## String

1. [Case Assertions](#case-assertions)
1. [Upper Case](#upper-case)
1. [Upper Case](#lower-case)
1. [Char](#char)

##### Case Assertions

```dart
// Regular functions
bool getIsUpperCase(String string);

bool getIsLowerCase(String string);

bool getFirstIsUpperCase(String string);

bool getLastIsUpperCase(String string);

bool getFirstIsLowerCase(String string);

bool getLastIsLowerCase(String string);

bool getCharAtIsUpperCase(String string, int index);

bool getCharAtIsLowerCase(String string, int index);

// Extension functions
print('Dart'.isUpperCase); // false
print('Dart'.isLowerCase); // false
print('Dart'.firstIsUpperCase); // true
print('Dart'firstIsLowerCase); // false
print('Dart'.lastIsLowerCase); // true
print('Dart'.charAtIsUpperCase(1)); // false
print('Dart'.charAtIsLowerCase(1)); // true

```


##### Upper Case

```dart
// Regular functions
String getFirstToUpperCase(String string, {bool allWords = false});

String getLastToUpperCase(String string, {bool allWords = false});

String getUpperCamelCase(String string, {bool attached = false, String betweenWords = ''});

String getUpperSnakeCase(String string);

// Extension functions
print('dart'.firstToUpperCase); // 'Dart'
print('dart'.firstToLowerCase); // 'darT'
print('upper camel case'.toLowerCamelCase); // 'Upper Camel Case'
print('upper underscore case'.toLowerSnakeCase); // 'UPPER_UNDERSCORE_CASE'
```

##### Lower Case

```dart
// Regular functions
String getFirstToLowerCase(String string, {bool allWords = false});

String getLastToLowerCase(String string, {bool allWords = false});

String getLowerCamelCase(String string, {bool attached = false, String betweenWords = ''});

String getLowerSnakeCase(String string);

// Extension functions
print('Dart'.firstToLowerCase); // 'dart'
print('DART'.firstToLowerCase); // 'DARt'
print('LOWER CAMEL CASE'.toLowerCamelCase); // 'lower Camel Case'
print('lower underscore case'.toLowerSnakeCase); // 'lower_underscore_case'
```

##### Char

```dart
// Regular functions
String getFirstChar(String string);

String getLastChar(String string);

int getLastCharIndex(String string);

String getCharAt(String string, int index);

// Extension functions
print('dart'.firstChar); // returns 'd'
print('dart'.lastChar); // returns 't'
print('dart'.lastCharIndex); // returns 3
print('dart'.charAt(1)); // returns 'a'
```

[return up](#more_functions)