import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/news/data/news_repository.dart';
import 'package:cyberapp/features/news/presentation/news_list/widgets/widgets.dart';
import 'package:cyberapp/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class NewsScreen extends ConsumerWidget {
  const NewsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<SectionData> sectionsList = [
      SectionData(icon: const Icon(Icons.newspaper), title: 'News'),
      SectionData(icon: const Icon(Icons.gamepad_outlined), title: 'Matches'),
      SectionData(
          icon: const Icon(Icons.emoji_events_rounded), title: 'Rankings'),
      SectionData(icon: const Icon(Icons.videogame_asset), title: 'Mini-Games'),
    ];
    var newsList = ref.watch(newsListProvider);
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(newsListProvider);
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: secondaryBackgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: SectionsList(
                sectionsList: sectionsList,
              ),
            ),
          ),
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
