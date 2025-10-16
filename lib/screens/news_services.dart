import 'package:news_app/screens/news_response.dart';
import 'package:news_app/utils/constants.dart';

// news services adalah jembatan dari client dan server

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
      // Berfungsi untuk parsing (melempar & mengambil) data dari json ke UI
      // Simplenya: kita daftarin baseURL + endpoint yang akan digunakan
      final uri = Uri.parse('$_baseUrl${Constants.topHeadLines}')
            // Untuk daftarin baseURL query(permintaan data)
            .replace(queryParameters: queryParams);
      // secara general untuk ngasi data (server akan paham)
      // e = Error
    } catch (e) {
      
    }
  }
}