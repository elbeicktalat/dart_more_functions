// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension CharPosition on String {
  ///[lastCharIndex] Returns the index of the last character of this [string],
  /// without leading and trailing whitespace counting.
  int get lastCharIndex => trim().length - 1;
}
