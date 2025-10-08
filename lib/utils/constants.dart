import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static const String baseURL = 'https://newsapi.org/v2/';

  // Get API Key from environment variables
  static String get apiKey => dotenv.env['API_KEY'] ??'';

  // List of environment
  static const String topHeadLines = '/top-headlines'; 
  static const String everything = '/everything';

  // List of Categories 
  static const List<String> categories = [
    'general',
    'technology',
    'business',
    'sports',
    'health',
    'science',
    'entertaiment'
  ];

  // countries
  static const String defaultCountry = 'us';

  // app info
  static const String appName = 'News App';
  static const String version = '1.0.0';
}

