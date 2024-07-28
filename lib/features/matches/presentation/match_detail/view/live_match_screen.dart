import 'package:auto_route/annotations.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/presentation/match_detail/widgets/widgets.dart';
import 'package:cyberapp/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class LiveMatchScreen extends StatelessWidget {
  const LiveMatchScreen({super.key, required this.match});

  final LiveMatch match;

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
          LiveMatchHeader(match: match),
          LiveMatchScoreboard(match: match),
          Text(
            'Current map: ${match.currentMap}',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
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
