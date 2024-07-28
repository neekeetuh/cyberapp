import 'package:cyberapp/data/data.dart';
import 'package:cyberapp/repositories/teams/models/models.dart';
import 'package:intl/intl.dart';

class FakeMatchData {
  final int id;
  final List<Team> teams;
  final DateTime date;
  final List<int> score;
  final Discipline discipline;

  FakeMatchData(
      {required this.id,
      required this.teams,
      required this.date,
      this.score = const [0, 0],
      required this.discipline});

  String get formattedDate {
    final formatter = DateFormat.yMMMMd('en_US');
    return formatter.format(date);
  }

  int get dateDifferenceInHours {
    return date.difference(DateTime.now()).inHours;
  }
}
