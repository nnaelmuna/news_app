import 'package:news_app/models/news_article.dart';

class NewsResponse {
  final String status;
  final int totalResults;
  final List<NewsArticle> article;

  NewsResponse({required this.status, required this.totalResults, required this.article});

  factory NewsResponse.fromJson(Map<String,dynamic> json) {
    return NewsResponse(
      status: json['status'] ?? '',
      totalResults: json['totalResults'] ?? 0,
      // kode yg digunakan utk mengkonversi data mentah dari server agar
      // siap digunakan oleh aplikasi
      article: (json['articles'] as List<dynamic>?)
               ?.map((article)=> NewsArticle.fromJson(article))
               .toList() ?? []
    );
  }
}