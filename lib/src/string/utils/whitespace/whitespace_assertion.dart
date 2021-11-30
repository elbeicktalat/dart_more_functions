// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringWhitespaceAssertion on String {
  ///Check if this [string] has whitespaces.
  ///```dart
  /// 'HelloWorld'.hasWhitespaces; // returns false
  /// 'hello world!'.hasWhitespaces; // returns true
  ///```
  bool get hasWhitespaces {
    return contains(RegExp(r' '));
  }

  ///Check if this [string] has only whitespaces.
  ///```dart
  /// 'Hello world!'.hasOnlyWhitespaces; // returns false
  /// ''.hasOnlyWhitespaces; // returns false because is empty.
  /// ' '.hasOnlyWhitespaces; // returns true
  ///```
  bool? get hasOnlyWhitespaces {
    if (isNotEmpty) {
      //revers regExp and check if list of Matches is empty.
      return RegExp(r'[^ ]').allMatches(this).isEmpty;
    }
    return false;
  }

//assertions
//TODO: add has whitespace.
//TODO: add has whitespace before [char].
//TODO: add has whitespace after [char].
//TODO: add has whitespace before [word].
//TODO: add has whitespace after [word].
}
