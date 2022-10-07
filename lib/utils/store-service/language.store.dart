import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String English = 'en';
const String Gujarati = 'gu';
Future<Locale> setLanguagePref(String langPref) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString("LANG_PREF", langPref);
  return _locale(langPref);
}

Future<Locale> getLangPref() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String langPref = _prefs.getString("LANG_PREF")!;
  return _locale(langPref);
}

Locale _locale(String lang) {
  Locale _temp;
  switch (lang) {
    case English:
      return Locale(English, 'US');
    // _temp = Locale(lang, 'US');
    // break;
    case Gujarati:
      return Locale(Gujarati, "IN");
    // _temp = Locale(lang, 'IN');
    // break;
    default:
      _temp = Locale(Gujarati, 'IN');
  }

  return _temp;
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}
  // static void getLanguagePref(String langPref) async {
  //   return box.read('langPref') == null ? 'en' : box.read('langPref');
  // }