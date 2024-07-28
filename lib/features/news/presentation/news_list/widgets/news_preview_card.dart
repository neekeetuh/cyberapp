import 'package:cyberapp/features/news/domain/domain.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class NewsPreviewCard extends StatelessWidget {
  const NewsPreviewCard({
    super.key,
    required this.newsData,
  });

  final NewsData newsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondaryColor.withOpacity(0.3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              textAlign: TextAlign.start,
              newsData.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              newsData.description,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                newsData.dateToString,
              )
            ]),
          )
        ],
      ),
    );
  }
}
