// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringWordPosition on String {
  ///[indexOfWord] Returns the index of the given word of this [string],
  /// without leading and trailing whitespace counting.
  ///
  /// By default all symbols is ignored in order to considering only Words.
  ///
  /// ```dart
  /// 'hello amazing world!'.indexOfWord('world'); // returns 2
  /// 'hello amazing world!'.indexOfWord('world!', ignoreSymbols: false); // returns 2
  /// ```
  ///
  /// Returns -1 if element is not found.
  ///
  /// ```dart
  /// 'hello amazing world !'.indexOfWord('!'); // returns -1
  /// 'hello amazing world!'.indexOfWord('world!'); // returns -1
  /// ```
  int indexOfWord(String word, {bool ignoreSymbols = true}) {
    List<String> words = trim().removeAllSymbols.toWords();
    if (!ignoreSymbols) words = trim().toWords();
    return words.indexOf(word);
  }
}
