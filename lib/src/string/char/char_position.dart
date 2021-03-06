// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringCharPosition on String {
  ///[lastCharIndex] Returns the index of the last character of this [string],
  /// without leading and trailing whitespace counting.
  int get lastCharIndex => trim().length - 1;

  ///[indexOfChar] Returns the index of the given character of this [string],
  /// without leading and trailing whitespace counting.
  int indexOfChar(String char) {
    return trim().toChars().indexOf(char);
  }
}
