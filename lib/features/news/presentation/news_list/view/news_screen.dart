import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/news/data/repositories/news_repository.dart';
import 'package:cyberapp/features/news/presentation/news_list/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class NewsScreen extends ConsumerWidget {
  const NewsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var newsList = ref.watch(newsListProvider);
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(newsListProvider);
      },
      child: CustomScrollView(
        slivers: [
          newsList.when(data: (newsList) {
            return NewsPreviewCards(newsList: newsList);
          }, error: (error, st) {
            return SliverToBoxAdapter(child: Text(error.toString()));
          }, loading: () {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class SectionData {
  final Icon icon;
  final String title;

  SectionData({required this.icon, required this.title});
}
