// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringCharGetter on String {
  ///[firstChar] Returns the first character in this string,
  /// without leading and trailing whitespace.
  /// ```dart
  /// 'dart'.firstChar; // returns 'd'
  /// '  dart'.firstChar; // returns 'd'
  /// ```
  String get firstChar => String.fromCharCode(trim().runes.first);

  ///[lastChar] Returns the last character in this string,
  /// without leading and trailing whitespace.
  /// ```dart
  /// 'dart'.lastChar; // returns 't'
  /// 'dart  '.lastChar; // returns 't'
  /// ```
  String get lastChar => String.fromCharCode(trim().runes.last);

  ///[charAt] Returns character in this string at that [index],
  /// without leading and trailing whitespace.
  /// ```dart
  /// charAt('dart', 1) // returns 'a'
  /// charAt('  dart   ', 1) // returns 'a'
  /// ```
  String charAt(int index) {
    return String.fromCharCode(trim().runes.elementAt(index));
  }
}
