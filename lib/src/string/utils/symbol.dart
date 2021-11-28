part of string_helpers;

String getRemoveSymbols(String string) {
  return string.replaceAll(RegExp(r'[^\w\s]+'), '');
}

//assertions
//TODO: add is symbol.
//TODO: add has symbol before [char].
//TODO: add has symbol after [char].
//TODO: add has symbol before [word].
//TODO: add has symbol after [word].

//remove
//TODO: add remove symbol after [char].
//TODO: add remove symbol before [char].
//TODO: add remove symbol after [word].
//TODO: add remove symbol before [word].

//add or insert
//TODO: add insert symbol after [char].
//TODO: add insert symbol before [char].
//TODO: add insert symbol after [word].
//TODO: add insert symbol before [word].
