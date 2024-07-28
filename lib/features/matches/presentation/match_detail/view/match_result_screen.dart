import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/presentation/match_detail/widgets/widgets.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class MatchResultScreen extends StatelessWidget {
  const MatchResultScreen({super.key, required this.match});

  final MatchResult match;

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
          MatchResultHeader(matchResult: match),
          MatchResultScoreboard(matchResult: match),
          Column(
            children: [
              Text(
                'Source:',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              InkWell(
                onTap: () => launchFromUrl(match.matchPageUrl),
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

Future<void> launchFromUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
