import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class DiscussionCard extends StatelessWidget {
  const DiscussionCard({
    super.key,
    required this.discussion,
  });

  final Discussion discussion;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      padding: const EdgeInsets.all(15),
      height: 120,
      child: Column(
        children: [
          Text(
            discussion.topic,
            style: Theme.of(context).textTheme.titleMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            discussion.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}