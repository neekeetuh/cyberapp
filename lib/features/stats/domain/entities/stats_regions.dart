enum StatsRegion {
  na(
    regionCode: 'na',
    regionTag: 'NA',
    regionName: 'North America',
  ),
  eu(
    regionCode: 'eu',
    regionTag: 'EU',
    regionName: 'Europe',
  ),
  ap(
    regionCode: 'ap',
    regionTag: 'APAC',
    regionName: 'Asia-Pacific',
  ),
  sa(
    regionCode: 'sa',
    regionTag: 'SA',
    regionName: 'Latin America',
  ),
  jp(
    regionCode: 'jp',
    regionTag: 'JP',
    regionName: 'Japan',
  ),
  oce(
    regionCode: 'oce',
    regionTag: 'OCE',
    regionName: 'Oceania',
  ),
  mn(
    regionCode: 'mn',
    regionTag: 'MENA',
    regionName: 'Middle East and North Africa',
  );

  final String regionCode;

  final String regionTag;

  final String regionName;

  const StatsRegion(
      {required this.regionCode,
        required this.regionTag,
        required this.regionName});
}
