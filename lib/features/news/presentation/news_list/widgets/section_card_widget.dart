import 'package:cyberapp/features/news/presentation/news_list/view/view.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final SectionData sectionData;

  const SectionCard({
    super.key,
    required this.sectionData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 100,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: secondaryColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          sectionData.icon,
          Text(
            sectionData.title,
            maxLines: 1,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
