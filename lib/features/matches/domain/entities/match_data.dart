abstract interface class MatchData {
  final String id;
  final String teamOne;
  final String teamTwo;
  final String matchPage;

  const MatchData(
      {required this.id,
      required this.teamOne,
      required this.teamTwo,
      required this.matchPage});

  String get matchPageUrl;
}
