// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringCharAssertion on String {
  ///Check if this [string] has characters, is not case sensitive.
  ///```dart
  /// 'hello world'.hasChars; // returns true
  /// 'hello world!'.hasChars; // returns true
  ///```
  bool get hasChars {
    return contains(RegExp(r"[\w\s]"));
  }

  ///Check if this [string] has only characters, is not case sensitive.
  ///```dart
  /// 'hello world'.hasOnlyChars; // returns true
  /// 'hello world!'.hasOnlyChars; // returns false
  ///```
  bool get hasOnlyChars {
    //revers regExp and check if list of Matches is empty.
    return RegExp(r"[^\w\s]").allMatches(this).isEmpty;
  }

  ///Check if this [string] has only majuscule characters.
  ///```dart
  /// 'hello world'.hasOnlyUpperChars; // returns false
  /// 'HELLO WORLD'.hasOnlyUpperChars; // returns true
  ///```
  bool get hasOnlyUpperChars {
    //revers regExp and check if list of Matches is empty.
    return RegExp(r"[^A-Z ]").allMatches(this).isEmpty;
  }

  ///Check if this [string] has only minuscule characters.
  ///```dart
  /// 'Hello world'.hasOnlyLowerChars; // returns false
  /// 'hello world'.hasOnlyLowerChars; // returns true
  ///```
  bool get hasOnlyLowerChars {
    //revers regExp and check if list of Matches is empty.
    return RegExp(r"[^a-z ]").allMatches(this).isEmpty;
  }
}
