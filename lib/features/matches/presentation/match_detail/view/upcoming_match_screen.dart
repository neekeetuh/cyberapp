import 'package:auto_route/annotations.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/presentation/match_detail/widgets/widgets.dart';
import 'package:cyberapp/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class UpcomingMatchScreen extends StatelessWidget {
  const UpcomingMatchScreen({super.key, required this.match});

  final UpcomingMatch match;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${match.teamOne} - ${match.teamTwo}'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          UpcomingMatchHeader(match: match),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    match.teamOne,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('VS',style: Theme.of(context).textTheme.bodyLarge,),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    match.teamTwo,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Column(
            children: [
              Text(
                'Source:',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              InkWell(
                onTap: () => _launchFromUrl(match.matchPageUrl),
                child: Container(
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryBackgroundColor),
                  child: Text(
                    match.matchPageUrl,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


Future<void> _launchFromUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
