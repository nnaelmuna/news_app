part of 'app_pages.dart';

// Menyembunyikan routing berjalan
abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const NEWS_DETAIL = _Paths.NEWS_DETAIL;
}

// Pendeklarasian route dari masing2 screen
abstract class _Paths {
  _Paths._();

  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const NEWS_DETAIL = '/news-detail';
}