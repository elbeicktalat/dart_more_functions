// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringWordTransformation on String {
  ///[toWords] Split this string into words.
  ///```dart
  /// 'hello world!'.toWords(); // returns [hello, world!]
  ///```
  List<String> toWords() => split(' ');
}
