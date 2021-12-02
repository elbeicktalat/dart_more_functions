// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringCharTransformation on String {
  ///[toChars] Split this string into characters.
  ///```dart
  /// 'hello world!'.toChars(); // returns [h,e,l,l,o, ,w,o,r,l,d,!]
  ///```
  List<String> toChars() => split('');
}
