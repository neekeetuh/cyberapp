enum Region {
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
  laS(
    regionCode: 'la-s',
    regionTag: 'LA-S',
    regionName: 'Latin America - South',
  ),
  laN(
    regionCode: 'la-n',
    regionTag: 'LA-N',
    regionName: 'Latin America - North',
  ),
  oce(
    regionCode: 'oce',
    regionTag: 'OCE',
    regionName: 'Oceania',
  ),
  kr(
    regionCode: 'kr',
    regionTag: 'KR',
    regionName: 'Korea',
  ),
  mn(
    regionCode: 'mn',
    regionTag: 'MENA',
    regionName: 'Middle East and North Africa',
  ),
  gc(
    regionCode: 'gc',
    regionTag: 'GC',
    regionName: 'Game Changers',
  ),
  br(
    regionCode: 'br',
    regionTag: 'BR',
    regionName: 'Brazil',
  ),
  cn(
    regionCode: 'cn',
    regionTag: 'CN',
    regionName: 'China',
  );

  final String regionCode;

  final String regionTag;

  final String regionName;

  const Region(
      {required this.regionCode,
      required this.regionTag,
      required this.regionName});
}
