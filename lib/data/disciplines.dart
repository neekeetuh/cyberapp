enum Discipline {
  counterStrikeGlobalOffensive(title: 'Counter-Strike Global Offensive', imageUrl: 'assets/images/png/csgo.png'),
  counterStrike2(title: 'Counter-Strike 2', imageUrl: 'assets/images/png/cs2.png'),
  valorant(title: 'Valorant', imageUrl: 'assets/images/png/valorant.png'),
  dota2(title: 'Dota 2', imageUrl: 'assets/images/png/dota2.png');

  const Discipline({
    required this.title,
    required this.imageUrl
  });

  final String title;
  final String imageUrl;
}
