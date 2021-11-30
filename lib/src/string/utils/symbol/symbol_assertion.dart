// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringSymbolAssertion on String {
  ///Check if this [string] has symbols.
  ///```dart
  /// 'Hello world'.hasSymbols; // returns false
  /// 'hello world!'.hasSymbols; // returns true
  ///```
  bool get hasSymbols {
    return contains(RegExp(r'[^\w\s]+'));
  }

  ///Check if this [string] has only symbols.
  ///```dart
  /// 'Hello world!'.hasOnlySymbols; // returns false
  /// '@ # % !'.hasOnlySymbols; // returns true
  ///```
  bool get hasOnlySymbols {
    return RegExp(r'[\w\s]+ ').allMatches(this).isEmpty;
  }

//assertions
//TODO: add is symbol.
//TODO: add has symbol before [char].
//TODO: add has symbol after [char].
//TODO: add has symbol before [word].
//TODO: add has symbol after [word].

}
