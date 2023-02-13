import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class DemoLocalization {
  final Locale locale;

  DemoLocalization(this.locale);

  static DemoLocalization? of(BuildContext context) {
    return Localizations.of<DemoLocalization>(context, DemoLocalization);
  }

  Map<String, String>? _localizedValue;

  Future load() async {
    String jsonStringValue =
        await rootBundle.loadString('lib/src/lang/${locale.languageCode}.json');
    Map<String, dynamic> mappedJson = json.decode(jsonStringValue);
    _localizedValue =
        mappedJson.map((key, value) => MapEntry(key, value.toString()));
  }

  String? getTranslated(String key) {
    return _localizedValue![key];
  }

  static const LocalizationsDelegate<DemoLocalization> delegate =
      _DemoLocalizationDelegate();
}

class _DemoLocalizationDelegate
    extends LocalizationsDelegate<DemoLocalization> {
  const _DemoLocalizationDelegate();
  @override
  bool isSupported(Locale locale) {
    return ['am', 'en'].contains(locale.languageCode);
  }

  @override
  Future<DemoLocalization> load(Locale locale) async {
    DemoLocalization demoLocalization = DemoLocalization(locale);
    await demoLocalization.load();
    return demoLocalization;
  }

  @override
  bool shouldReload(_DemoLocalizationDelegate old) {
    return false;
  }
}
