import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:flutter/material.dart';

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