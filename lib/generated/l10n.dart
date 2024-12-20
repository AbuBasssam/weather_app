// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home Page`
  String get home_page_title {
    return Intl.message(
      'Home Page',
      name: 'home_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Location to See the Forecast`
  String get home_page_body {
    return Intl.message(
      'Enter Your Location to See the Forecast',
      name: 'home_page_body',
      desc: '',
      args: [],
    );
  }

  /// `Updated at`
  String get last_updated_text {
    return Intl.message(
      'Updated at',
      name: 'last_updated_text',
      desc: '',
      args: [],
    );
  }

  /// `Search City`
  String get search_page_title {
    return Intl.message(
      'Search City',
      name: 'search_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter city name`
  String get text_field_hint_text {
    return Intl.message(
      'Enter city name',
      name: 'text_field_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get text_field_label_text {
    return Intl.message(
      'Search',
      name: 'text_field_label_text',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again`
  String get no_internet_error {
    return Intl.message(
      'Please check your internet connection and try again',
      name: 'no_internet_error',
      desc: '',
      args: [],
    );
  }

  /// `Parameter 'q' not provided.`
  String get bad_request_1003_error {
    return Intl.message(
      'Parameter \'q\' not provided.',
      name: 'bad_request_1003_error',
      desc: '',
      args: [],
    );
  }

  /// `API request url is invalid.`
  String get bad_request_1005_error {
    return Intl.message(
      'API request url is invalid.',
      name: 'bad_request_1005_error',
      desc: '',
      args: [],
    );
  }

  /// `No location found matching parameter 'q'`
  String get bad_request_1006_error {
    return Intl.message(
      'No location found matching parameter \'q\'',
      name: 'bad_request_1006_error',
      desc: '',
      args: [],
    );
  }

  /// `Json body passed in bulk request is invalid. Please make sure it is valid json with utf-8 encoding.`
  String get bad_request_9000_error {
    return Intl.message(
      'Json body passed in bulk request is invalid. Please make sure it is valid json with utf-8 encoding.',
      name: 'bad_request_9000_error',
      desc: '',
      args: [],
    );
  }

  /// `Json body contains too many locations for bulk request. Please keep it below 50 in a single request`
  String get bad_request_9001_error {
    return Intl.message(
      'Json body contains too many locations for bulk request. Please keep it below 50 in a single request',
      name: 'bad_request_9001_error',
      desc: '',
      args: [],
    );
  }

  /// `Internal application error`
  String get bad_request_9999_error {
    return Intl.message(
      'Internal application error',
      name: 'bad_request_9999_error',
      desc: '',
      args: [],
    );
  }

  /// `API key not provided.`
  String get unauthorized_1002 {
    return Intl.message(
      'API key not provided.',
      name: 'unauthorized_1002',
      desc: '',
      args: [],
    );
  }

  /// `API key provided is invalid`
  String get unauthorized_2006 {
    return Intl.message(
      'API key provided is invalid',
      name: 'unauthorized_2006',
      desc: '',
      args: [],
    );
  }

  /// `API key has exceeded calls per month quota.`
  String get forbidden_2007_error {
    return Intl.message(
      'API key has exceeded calls per month quota.',
      name: 'forbidden_2007_error',
      desc: '',
      args: [],
    );
  }

  /// `API key has been disabled.`
  String get forbidden_2008_error {
    return Intl.message(
      'API key has been disabled.',
      name: 'forbidden_2008_error',
      desc: '',
      args: [],
    );
  }

  /// `API key does not have access to the resource. Please check pricing page for what is allowed in your API subscription plan.`
  String get forbidden_2009_error {
    return Intl.message(
      'API key does not have access to the resource. Please check pricing page for what is allowed in your API subscription plan.',
      name: 'forbidden_2009_error',
      desc: '',
      args: [],
    );
  }

  /// `Sunny`
  String get Sunny {
    return Intl.message(
      'Sunny',
      name: 'Sunny',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get Clear {
    return Intl.message(
      'Clear',
      name: 'Clear',
      desc: '',
      args: [],
    );
  }

  /// `Partly cloudy`
  String get Partly_cloudy {
    return Intl.message(
      'Partly cloudy',
      name: 'Partly_cloudy',
      desc: '',
      args: [],
    );
  }

  /// `Cloudy`
  String get Cloudy {
    return Intl.message(
      'Cloudy',
      name: 'Cloudy',
      desc: '',
      args: [],
    );
  }

  /// `Overcast`
  String get Overcast {
    return Intl.message(
      'Overcast',
      name: 'Overcast',
      desc: '',
      args: [],
    );
  }

  /// `Mist`
  String get Mist {
    return Intl.message(
      'Mist',
      name: 'Mist',
      desc: '',
      args: [],
    );
  }

  /// `Patchy rain possible`
  String get Patchy_rain_possible {
    return Intl.message(
      'Patchy rain possible',
      name: 'Patchy_rain_possible',
      desc: '',
      args: [],
    );
  }

  /// `Patchy snow possible`
  String get Patchy_snow_possible {
    return Intl.message(
      'Patchy snow possible',
      name: 'Patchy_snow_possible',
      desc: '',
      args: [],
    );
  }

  /// `Patchy sleet possible`
  String get Patchy_sleet_possible {
    return Intl.message(
      'Patchy sleet possible',
      name: 'Patchy_sleet_possible',
      desc: '',
      args: [],
    );
  }

  /// `Patchy freezing drizzle possible`
  String get Patchy_freezing_drizzle_possible {
    return Intl.message(
      'Patchy freezing drizzle possible',
      name: 'Patchy_freezing_drizzle_possible',
      desc: '',
      args: [],
    );
  }

  /// `Thundery outbreaks possible`
  String get Thundery_outbreaks_possible {
    return Intl.message(
      'Thundery outbreaks possible',
      name: 'Thundery_outbreaks_possible',
      desc: '',
      args: [],
    );
  }

  /// `Blowing snow`
  String get Blowing_snow {
    return Intl.message(
      'Blowing snow',
      name: 'Blowing_snow',
      desc: '',
      args: [],
    );
  }

  /// `Blizzard`
  String get Blizzard {
    return Intl.message(
      'Blizzard',
      name: 'Blizzard',
      desc: '',
      args: [],
    );
  }

  /// `Fog`
  String get Fog {
    return Intl.message(
      'Fog',
      name: 'Fog',
      desc: '',
      args: [],
    );
  }

  /// `Freezing fog`
  String get Freezing_fog {
    return Intl.message(
      'Freezing fog',
      name: 'Freezing_fog',
      desc: '',
      args: [],
    );
  }

  /// `Patchy light drizzle`
  String get Patchy_light_drizzle {
    return Intl.message(
      'Patchy light drizzle',
      name: 'Patchy_light_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Light drizzle`
  String get Light_drizzle {
    return Intl.message(
      'Light drizzle',
      name: 'Light_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Freezing drizzle`
  String get Freezing_drizzle {
    return Intl.message(
      'Freezing drizzle',
      name: 'Freezing_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Heavy freezing drizzle`
  String get Heavy_freezing_drizzle {
    return Intl.message(
      'Heavy freezing drizzle',
      name: 'Heavy_freezing_drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Patchy light rain`
  String get Patchy_light_rain {
    return Intl.message(
      'Patchy light rain',
      name: 'Patchy_light_rain',
      desc: '',
      args: [],
    );
  }

  /// `Light rain`
  String get Light_rain {
    return Intl.message(
      'Light rain',
      name: 'Light_rain',
      desc: '',
      args: [],
    );
  }

  /// `Moderate rain at times`
  String get Moderate_rain_at_times {
    return Intl.message(
      'Moderate rain at times',
      name: 'Moderate_rain_at_times',
      desc: '',
      args: [],
    );
  }

  /// `Moderate rain`
  String get Moderate_rain {
    return Intl.message(
      'Moderate rain',
      name: 'Moderate_rain',
      desc: '',
      args: [],
    );
  }

  /// `Heavy rain at times`
  String get Heavy_rain_at_times {
    return Intl.message(
      'Heavy rain at times',
      name: 'Heavy_rain_at_times',
      desc: '',
      args: [],
    );
  }

  /// `Heavy rain`
  String get Heavy_rain {
    return Intl.message(
      'Heavy rain',
      name: 'Heavy_rain',
      desc: '',
      args: [],
    );
  }

  /// `Light freezing rain`
  String get Light_freezing_rain {
    return Intl.message(
      'Light freezing rain',
      name: 'Light_freezing_rain',
      desc: '',
      args: [],
    );
  }

  /// `Moderate or heavy freezing rain`
  String get Moderate_or_heavy_freezing_rain {
    return Intl.message(
      'Moderate or heavy freezing rain',
      name: 'Moderate_or_heavy_freezing_rain',
      desc: '',
      args: [],
    );
  }

  /// `Light sleet`
  String get Light_sleet {
    return Intl.message(
      'Light sleet',
      name: 'Light_sleet',
      desc: '',
      args: [],
    );
  }

  /// `Moderate or heavy sleet`
  String get Moderate_or_heavy_sleet {
    return Intl.message(
      'Moderate or heavy sleet',
      name: 'Moderate_or_heavy_sleet',
      desc: '',
      args: [],
    );
  }

  /// `Patchy light snow`
  String get Patchy_light_snow {
    return Intl.message(
      'Patchy light snow',
      name: 'Patchy_light_snow',
      desc: '',
      args: [],
    );
  }

  /// `Light snow`
  String get Light_snow {
    return Intl.message(
      'Light snow',
      name: 'Light_snow',
      desc: '',
      args: [],
    );
  }

  /// `Patchy moderate snow`
  String get Patchy_moderate_snow {
    return Intl.message(
      'Patchy moderate snow',
      name: 'Patchy_moderate_snow',
      desc: '',
      args: [],
    );
  }

  /// `Moderate snow`
  String get Moderate_snow {
    return Intl.message(
      'Moderate snow',
      name: 'Moderate_snow',
      desc: '',
      args: [],
    );
  }

  /// `Patchy heavy snow`
  String get Patchy_heavy_snow {
    return Intl.message(
      'Patchy heavy snow',
      name: 'Patchy_heavy_snow',
      desc: '',
      args: [],
    );
  }

  /// `Heavy snow`
  String get Heavy_snow {
    return Intl.message(
      'Heavy snow',
      name: 'Heavy_snow',
      desc: '',
      args: [],
    );
  }

  /// `Ice pellets`
  String get Ice_pellets {
    return Intl.message(
      'Ice pellets',
      name: 'Ice_pellets',
      desc: '',
      args: [],
    );
  }

  /// `Light rain shower`
  String get Light_rain_shower {
    return Intl.message(
      'Light rain shower',
      name: 'Light_rain_shower',
      desc: '',
      args: [],
    );
  }

  /// `Moderate or heavy rain shower`
  String get Moderate_or_heavy_rain_shower {
    return Intl.message(
      'Moderate or heavy rain shower',
      name: 'Moderate_or_heavy_rain_shower',
      desc: '',
      args: [],
    );
  }

  /// `Torrential rain shower`
  String get Torrential_rain_shower {
    return Intl.message(
      'Torrential rain shower',
      name: 'Torrential_rain_shower',
      desc: '',
      args: [],
    );
  }

  /// `Light sleet showers`
  String get Light_sleet_showers {
    return Intl.message(
      'Light sleet showers',
      name: 'Light_sleet_showers',
      desc: '',
      args: [],
    );
  }

  /// `Moderate or heavy sleet showers`
  String get Moderate_or_heavy_sleet_showers {
    return Intl.message(
      'Moderate or heavy sleet showers',
      name: 'Moderate_or_heavy_sleet_showers',
      desc: '',
      args: [],
    );
  }

  /// `Light snow showers`
  String get Light_snow_showers {
    return Intl.message(
      'Light snow showers',
      name: 'Light_snow_showers',
      desc: '',
      args: [],
    );
  }

  /// `Moderate or heavy snow showers`
  String get Moderate_or_heavy_snow_showers {
    return Intl.message(
      'Moderate or heavy snow showers',
      name: 'Moderate_or_heavy_snow_showers',
      desc: '',
      args: [],
    );
  }

  /// `Light showers of ice pellets`
  String get Light_showers_of_ice_pellets {
    return Intl.message(
      'Light showers of ice pellets',
      name: 'Light_showers_of_ice_pellets',
      desc: '',
      args: [],
    );
  }

  /// `Moderate or heavy showers of ice pellets`
  String get Moderate_or_heavy_showers_of_ice_pellets {
    return Intl.message(
      'Moderate or heavy showers of ice pellets',
      name: 'Moderate_or_heavy_showers_of_ice_pellets',
      desc: '',
      args: [],
    );
  }

  /// `Patchy light rain with thunder`
  String get Patchy_light_rain_with_thunder {
    return Intl.message(
      'Patchy light rain with thunder',
      name: 'Patchy_light_rain_with_thunder',
      desc: '',
      args: [],
    );
  }

  /// `Moderate or heavy rain with thunder`
  String get Moderate_or_heavy_rain_with_thunder {
    return Intl.message(
      'Moderate or heavy rain with thunder',
      name: 'Moderate_or_heavy_rain_with_thunder',
      desc: '',
      args: [],
    );
  }

  /// `Patchy light snow with thunder`
  String get Patchy_light_snow_with_thunder {
    return Intl.message(
      'Patchy light snow with thunder',
      name: 'Patchy_light_snow_with_thunder',
      desc: '',
      args: [],
    );
  }

  /// `Moderate or heavy snow with thunder`
  String get Moderate_or_heavy_snow_with_thunder {
    return Intl.message(
      'Moderate or heavy snow with thunder',
      name: 'Moderate_or_heavy_snow_with_thunder',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error_message_header {
    return Intl.message(
      'Error',
      name: 'error_message_header',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred. Please contact support if the issue persists`
  String get uncatched_exception {
    return Intl.message(
      'An unexpected error occurred. Please contact support if the issue persists',
      name: 'uncatched_exception',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'bg'),
      Locale.fromSubtags(languageCode: 'bn'),
      Locale.fromSubtags(languageCode: 'cs'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'el'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fi'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'hu'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'jv'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'mr'),
      Locale.fromSubtags(languageCode: 'nl'),
      Locale.fromSubtags(languageCode: 'pa'),
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'ro'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'si'),
      Locale.fromSubtags(languageCode: 'sk'),
      Locale.fromSubtags(languageCode: 'sr'),
      Locale.fromSubtags(languageCode: 'sv'),
      Locale.fromSubtags(languageCode: 'ta'),
      Locale.fromSubtags(languageCode: 'te'),
      Locale.fromSubtags(languageCode: 'tr'),
      Locale.fromSubtags(languageCode: 'uk'),
      Locale.fromSubtags(languageCode: 'ur'),
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zu'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
