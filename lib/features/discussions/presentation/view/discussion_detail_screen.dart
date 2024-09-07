import 'package:auto_route/annotations.dart';
import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DiscussionDetailScreen extends StatelessWidget {
  const DiscussionDetailScreen({super.key, required this.discussion});

  final Discussion discussion;

  @override
  Widget build(BuildContext context) {
    // final comments = discussion.getComments();
    return Scaffold(
        appBar: AppBar(
          title: Text(discussion.topic),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(15),
                child: DiscussionOverview(discussion: discussion),
              ),
            ),
            SliverList.builder(
                // itemCount: comments.length,
                itemBuilder: (context, index) {
                  // return Text('${comments[index]}');
                })
          ],
        ));
  }
}

class DiscussionOverview extends StatelessWidget {
  const DiscussionOverview({
    super.key,
    required this.discussion,
  });

  final Discussion discussion;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          discussion.topic,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          discussion.description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            '${discussion.date}',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.thumb_up,
              color: Colors.green,
            ),
            const SizedBox(
              width: 10,
            ),
            Text('${discussion.likesCount}'),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.thumb_down,
              color: Colors.red,
            ),
            const SizedBox(
              width: 10,
            ),
            Text('${discussion.dislikesCount}'),
          ],
        )
      ],
    );
  }
}
