enum StatsTimeSpans {
  days30(jsonCode: '30'),
  days60(jsonCode: '60'),
  days90(jsonCode: '90');

  final String jsonCode;

  const StatsTimeSpans({required this.jsonCode});
}