// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_ar.dart' as messages_ar;
import 'messages_bg.dart' as messages_bg;
import 'messages_bn.dart' as messages_bn;
import 'messages_cs.dart' as messages_cs;
import 'messages_de.dart' as messages_de;
import 'messages_el.dart' as messages_el;
import 'messages_en.dart' as messages_en;
import 'messages_es.dart' as messages_es;
import 'messages_fi.dart' as messages_fi;
import 'messages_fr.dart' as messages_fr;
import 'messages_hi.dart' as messages_hi;
import 'messages_hu.dart' as messages_hu;
import 'messages_it.dart' as messages_it;
import 'messages_ja.dart' as messages_ja;
import 'messages_jv.dart' as messages_jv;
import 'messages_ko.dart' as messages_ko;
import 'messages_mr.dart' as messages_mr;
import 'messages_nl.dart' as messages_nl;
import 'messages_pa.dart' as messages_pa;
import 'messages_pl.dart' as messages_pl;
import 'messages_pt.dart' as messages_pt;
import 'messages_ro.dart' as messages_ro;
import 'messages_ru.dart' as messages_ru;
import 'messages_si.dart' as messages_si;
import 'messages_sk.dart' as messages_sk;
import 'messages_sr.dart' as messages_sr;
import 'messages_sv.dart' as messages_sv;
import 'messages_ta.dart' as messages_ta;
import 'messages_te.dart' as messages_te;
import 'messages_tr.dart' as messages_tr;
import 'messages_uk.dart' as messages_uk;
import 'messages_ur.dart' as messages_ur;
import 'messages_vi.dart' as messages_vi;
import 'messages_zh.dart' as messages_zh;
import 'messages_zh_cmn.dart' as messages_zh_cmn;
import 'messages_zh_hsn.dart' as messages_zh_hsn;
import 'messages_zh_tw.dart' as messages_zh_tw;
import 'messages_zh_wuu.dart' as messages_zh_wuu;
import 'messages_zh_yue.dart' as messages_zh_yue;
import 'messages_zu.dart' as messages_zu;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'ar': () => new SynchronousFuture(null),
  'bg': () => new SynchronousFuture(null),
  'bn': () => new SynchronousFuture(null),
  'cs': () => new SynchronousFuture(null),
  'de': () => new SynchronousFuture(null),
  'el': () => new SynchronousFuture(null),
  'en': () => new SynchronousFuture(null),
  'es': () => new SynchronousFuture(null),
  'fi': () => new SynchronousFuture(null),
  'fr': () => new SynchronousFuture(null),
  'hi': () => new SynchronousFuture(null),
  'hu': () => new SynchronousFuture(null),
  'it': () => new SynchronousFuture(null),
  'ja': () => new SynchronousFuture(null),
  'jv': () => new SynchronousFuture(null),
  'ko': () => new SynchronousFuture(null),
  'mr': () => new SynchronousFuture(null),
  'nl': () => new SynchronousFuture(null),
  'pa': () => new SynchronousFuture(null),
  'pl': () => new SynchronousFuture(null),
  'pt': () => new SynchronousFuture(null),
  'ro': () => new SynchronousFuture(null),
  'ru': () => new SynchronousFuture(null),
  'si': () => new SynchronousFuture(null),
  'sk': () => new SynchronousFuture(null),
  'sr': () => new SynchronousFuture(null),
  'sv': () => new SynchronousFuture(null),
  'ta': () => new SynchronousFuture(null),
  'te': () => new SynchronousFuture(null),
  'tr': () => new SynchronousFuture(null),
  'uk': () => new SynchronousFuture(null),
  'ur': () => new SynchronousFuture(null),
  'vi': () => new SynchronousFuture(null),
  'zh': () => new SynchronousFuture(null),
  'zh_CMN': () => new SynchronousFuture(null),
  'zh_HSN': () => new SynchronousFuture(null),
  'zh_TW': () => new SynchronousFuture(null),
  'zh_WUU': () => new SynchronousFuture(null),
  'zh_YUE': () => new SynchronousFuture(null),
  'zu': () => new SynchronousFuture(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'ar':
      return messages_ar.messages;
    case 'bg':
      return messages_bg.messages;
    case 'bn':
      return messages_bn.messages;
    case 'cs':
      return messages_cs.messages;
    case 'de':
      return messages_de.messages;
    case 'el':
      return messages_el.messages;
    case 'en':
      return messages_en.messages;
    case 'es':
      return messages_es.messages;
    case 'fi':
      return messages_fi.messages;
    case 'fr':
      return messages_fr.messages;
    case 'hi':
      return messages_hi.messages;
    case 'hu':
      return messages_hu.messages;
    case 'it':
      return messages_it.messages;
    case 'ja':
      return messages_ja.messages;
    case 'jv':
      return messages_jv.messages;
    case 'ko':
      return messages_ko.messages;
    case 'mr':
      return messages_mr.messages;
    case 'nl':
      return messages_nl.messages;
    case 'pa':
      return messages_pa.messages;
    case 'pl':
      return messages_pl.messages;
    case 'pt':
      return messages_pt.messages;
    case 'ro':
      return messages_ro.messages;
    case 'ru':
      return messages_ru.messages;
    case 'si':
      return messages_si.messages;
    case 'sk':
      return messages_sk.messages;
    case 'sr':
      return messages_sr.messages;
    case 'sv':
      return messages_sv.messages;
    case 'ta':
      return messages_ta.messages;
    case 'te':
      return messages_te.messages;
    case 'tr':
      return messages_tr.messages;
    case 'uk':
      return messages_uk.messages;
    case 'ur':
      return messages_ur.messages;
    case 'vi':
      return messages_vi.messages;
    case 'zh':
      return messages_zh.messages;
    case 'zh_CMN':
      return messages_zh_cmn.messages;
    case 'zh_HSN':
      return messages_zh_hsn.messages;
    case 'zh_TW':
      return messages_zh_tw.messages;
    case 'zh_WUU':
      return messages_zh_wuu.messages;
    case 'zh_YUE':
      return messages_zh_yue.messages;
    case 'zu':
      return messages_zu.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) {
  var availableLocale = Intl.verifiedLocale(
      localeName, (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return new SynchronousFuture(false);
  }
  var lib = _deferredLibraries[availableLocale];
  lib == null ? new SynchronousFuture(false) : lib();
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new SynchronousFuture(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  var actualLocale =
      Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
