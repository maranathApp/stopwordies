library stopwordies;

import 'dart:convert';
import 'package:flutter/services.dart';

part './src/models/locales.model.dart';

class StopWordies {
  /// Returns the collection/list of stopwords for the [locale].
  static Future<List<String>> getFor({required SWLocale locale}) async {
    final data =
        await rootBundle.loadString('assets/jsons/sw-${locale.name}.json');

    return (json.decode(data) as List<dynamic>).cast<String>();
  }
}
