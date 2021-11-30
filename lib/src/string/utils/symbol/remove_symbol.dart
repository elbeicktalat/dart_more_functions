// Copyright (c) 2021. Talat El Beick. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

part of string_helpers;

extension StringRemoveSymbols on String {
  String get removeAllSymbols => replaceAll(RegExp(r'[^\w\s]+'), '');

//remove
//TODO: add remove symbol after [char].
//TODO: add remove symbol before [char].
//TODO: add remove symbol after [word].
//TODO: add remove symbol before [word].

}
