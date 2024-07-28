import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/news/domain/domain.dart';
import 'package:cyberapp/features/news/presentation/news_list/widgets/widgets.dart';
import 'package:cyberapp/router/router.dart';
import 'package:flutter/material.dart';

class NewsPreviewCards extends StatelessWidget {
  final List<NewsData> newsList;

  const NewsPreviewCards({
    super.key,
    required this.newsList,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              AutoRouter.of(context)
                  .push(NewsDetailRoute(newsDetail: newsList[index]));
            },
            child: NewsPreviewCard(newsData: newsList[index]),
          );
        });
  }
}
