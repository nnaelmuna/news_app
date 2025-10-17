import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/news_articles.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsCard extends StatelessWidget {
  final NewsArticles articles;
  final VoidCallback onTap;

  const NewsCard({super.key, required this.articles, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 2,
      shadowColor: AppColors.cardShadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            if (articles.urlToImage != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage( // Untuk membuat gambar yang kita hasilkan sama rata (size, pixelnya)
                  imageUrl: articles.urlToImage!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    height: 200,
                    color: AppColors.divider,
                    child: Center(
                      child: CircularProgressIndicator() ,
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    height: 200,
                    color: AppColors.divider,
                    child: Icon(
                      Icons.image_not_supported,
                      size: 40,
                      color: AppColors.textHint,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        if (articles.source?.name != null) ...[
                          Expanded(
                            child: Text(
                              articles.source!.name!,
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 8),
                        ],
                        // timestamp
                        if (articles.publishedAt != null)
                        Text(
                          timeago.format(DateTime.parse(articles.publishedAt!))
                        )
                      ],
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}