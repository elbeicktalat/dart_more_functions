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

List of Helpers type:

1. [String](#string)

## String

1. [Case](#case)
   1. [Case Assertions](#case-assertions)
   2. [Upper Case](#upper-case)
   3. [Lower Case](#lower-case)
2. [Char](#char)
   1. [Char Assertions](#char-assertions)
   1. [Char Getters](#char-getters)
   1. [Char Position](#char-position)
   1. [Char Transformation](#char-transformation)
3. [Word](#word)
   1. [Word Getters](#word-getters)
   1. [Word Position](#word-position)
   1. [Word Transformation](#word-transformation)
4. [Generic Utils](#generic-utils)
   1. [Counters](#counters)
   2. [Symbol](#symbol)
      1. [Add Symbol](#add-symbol)
      2. [Remove Symbol](#remove-symbol)
      3. [Assertion Symbol](#assertion-symbol)
   3. [Whitespace](#whitespace)
      1. [Add Whitespace](#add-whitespace)
      1. [Remove Whitespace](#remove-whitespace)
      1. [Assertion Whitespace](#assertion-whitespace)

### CASE

#### Case Assertions

```dart
//entire string
print('Dart is awesome!'.isUpperCase); // false
print('Dart is awesome!'.isLowerCase); // false

//characters
print('Dart is awesome!'.firstCharIsUpperCase); // true
print('Dart is awesome!'firstCharIsLowerCase); // false
print('Dart is awesome!'.lastCharIsUpperCase); // false
print('Dart is awesome!'.lastCharIsLowerCase); // true
print('Dart is awesome!'.charAtIsUpperCase(1)); // ['a'] false
print('Dart is awesome!'.charAtIsLowerCase(1)); // ['a'] true

//words
print('Dart is awesome!'.firstWordIsUpperCase); // false
print('Dart is awesome!'firstWordIsLowerCase); // false
print('Dart is awesome!'.lastWordIsUpperCase); // false
print('Dart is awesome!'.lastWordIsLowerCase); // true
print('Dart is awesome!'.wordAtIsUpperCase(1)); // ['is'] false
print('Dart is awesome!'.wordAtIsLowerCase(1)); // ['is'] true
```

#### Upper Case
```dart
print('dart'.firstCharToUpperCase()); // 'Dart'
print('dart'.firstCharToLowerCase()); // 'darT'
print('upper camel case'.toUpperCamelCase()); // 'Upper Camel Case'
print('upper underscore case'.toUpperSnakeCase()); // 'UPPER_UNDERSCORE_CASE'
print('upper kebab case'.toUpperKebabCase()); // 'UPPER-KEBAB-CASE'
```

#### Lower Case
```dart
print('DART'.firstCharToLowerCase()); // 'dART'
print('DART'.firstCharToLowerCase()); // 'DARt'
print('LOWER CAMEL CASE'.toLowerCamelCase()); // 'lower Camel Case'
print('LOWER SNAKE CASE'.toLowerSnakeCase()); // 'lower_underscore_case'
print('LOWER KEBAB CASE'.toLowerKebabCase()); // 'lower-kebab-case'
```

### Char

#### Char Assertions
```dart
print('Dart is awesome!'.hasChars); // true 
print('Dart is awesome!'.hasOnlyChars); // false  
print('Dart is awesome!'.hasOnlyUpperChars); // false   
print('Dart is awesome!'.hasOnlyLowerChars); // false
```

#### Char Getters
```dart
print('dart'.firstChar); // returns 'd'
print('dart'.lastChar); // returns 't'
print('dart'.charAt(1)); // returns 'a'
```

#### Char Position
```dart
print('dart'.lastCharIndex); // returns 3
print('dart'.indexOfChar('a')); // returns 1
```

#### Char Transformation
```dart
print('dart'.toChars()); // returns ['d','a','r','t']
```

### Word

#### Word Getters
```dart
print('Dart is awesome!'.firstWord); // 'Dart' 
print('Dart is awesome!'.lastWord); // 'awesome!'  
print('Dart is awesome!'.wordAt(1)); // 'is'   
```

#### Word Position
```dart
print('Dart is awesome!'.indexOfWord('Dart')); // returns 0 
```

#### Word Transformation
```dart
print('Dart is awesome!'.toWords()); // ['Dart','is','awesome!'] 
```

### Generic Utils

#### Counters
```dart
print('Dart is awesome!'.countChar()); // 16
print('Dart is awesome!'.countWord()); // 3
```

#### Symbol

##### Add Symbol
`Not implemented yet.`

##### Remove Symbol

```dart
print('Dart Is Awesome!'.removeAllSymbols); // 'Dart Is Awesome'
```

##### Assertion Symbol
```dart
print('Dart is awesome!'.hasSymbols); // true
print('Dart is awesome!'.hasOnlySymbols); // false
```

#### Whitespace

##### Add Whitespace
`Not implemented yet.`

##### Remove Whitespace

```dart
print('Dart Is Awesome!'.removeAllWhitespaces); // 'DartIsAwesome!'
```

##### Assertion Whitespace
```dart
print('Dart is awesome!'.hasWhitespaces); // true
print('Dart is awesome!'.hasOnlyWhitespaces); // false
```

[return up](#more_functions)