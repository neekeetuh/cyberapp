import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/news/data/data.dart';
import 'package:cyberapp/features/news/domain/domain.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class NewsDetailScreen extends ConsumerWidget {
  final NewsData newsDetail;

  const NewsDetailScreen({super.key, required this.newsDetail});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsData = ref.watch(newsDetailProvider(newsDetail.urlPath));
    return RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(newsDetailProvider);
        },
        child: newsData.when(data: (newsData) {
          return Scaffold(
              appBar: AppBar(title: Text(newsData.title)),
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                      child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newsData.title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          newsData.description,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              newsData.dateToString,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Source:',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            InkWell(
                              onTap: () => _launchUrl(newsData.urlPath),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: secondaryBackgroundColor,
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  newsData.urlPath,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: 'Author:  ',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                    children: [
                                  TextSpan(
                                      text: newsData.author,
                                      style:
                                          Theme.of(context).textTheme.bodyLarge)
                                ])),
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ));
        }, error: (error, st) {
          return Scaffold(
            body: Center(
              child: Text(error.toString()),
            ),
          );
        }, loading: () {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }));
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
