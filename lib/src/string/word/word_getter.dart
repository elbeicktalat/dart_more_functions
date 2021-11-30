// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringWordGetter on String {
  ///[firstWord] Returns the first word in this string.
  /// ```dart
  /// 'hello world!'.firstWord; // returns 'hello'
  /// ```
  String get firstWord => toWords.first;

  ///[lastWord] Returns the first word in this string.
  /// ```dart
  /// 'hello world!'.lastWord; // returns 'world!'
  /// ```
  String get lastWord => toWords.last;

  ///[wordAt] Returns word in this string at [index].
  /// ```dart
  /// 'hello amazing world!'.wordAt(1) // returns 'amazing'
  /// ```
  String wordAt(int index) {
    return toWords.elementAt(index);
  }
}
