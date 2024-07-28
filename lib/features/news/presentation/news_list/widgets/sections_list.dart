import 'package:cyberapp/features/news/presentation/news_list/view/view.dart';
import 'package:cyberapp/features/news/presentation/news_list/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SectionsList extends StatelessWidget {
  final List<SectionData> sectionsList;

  const SectionsList({
    super.key,
    required this.sectionsList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: sectionsList
            .map((sectionData) => SectionCard(
          sectionData: sectionData,
        ))
            .toList(),
      ),
    );
  }
}