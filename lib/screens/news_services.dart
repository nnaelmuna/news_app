import 'package:news_app/screens/news_response.dart';
import 'package:news_app/utils/constants.dart';

class NewsServices {
  static const String _baseUrl = Constants.baseURL;
  static final String _apikey = Constants.apiKey;

  // Fungsi yang bertujuan untuk membuat request GET ke server
  Future<NewsResponse> getTopHeadlines({
    String country = Constants.defaultCountry,
    String? category,
    int page = 1,
    int pageSize = 20,
  }) async {
    try {
      final Map<String,String> queryParams = {
        'apiKey': _apikey,
        'country': country,
        'page': page.toString(),
        'pageSize': pageSize.toString()
      };

      // Statement yang akan dijalankan ketika category tidak kosong
      if (category != null && category.isNotEmpty) {
        queryParams['category'] = category;
      }
      // Berfungsi untuk parsing data dari json ke UI
      final uri = Uri.parse('$_baseUrl${Constants.topHeadLines}')
      // e = Error
    } catch (e) {
      
    }
  }
}