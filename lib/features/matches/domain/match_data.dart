abstract interface class MatchData{
  final String teamOne;
  final String teamTwo;
  final String matchPage;

  MatchData({required this.teamOne, required this.teamTwo, required this.matchPage});

  String get matchPageUrl;
}