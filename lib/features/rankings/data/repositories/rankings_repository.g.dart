// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rankings_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rankingsRepositoryHash() =>
    r'5faf35dd78fefbefd4f6d157294bd0e6e9a22ba1';

/// See also [rankingsRepository].
@ProviderFor(rankingsRepository)
final rankingsRepositoryProvider =
    AutoDisposeProvider<RankingsRepository>.internal(
  rankingsRepository,
  name: r'rankingsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$rankingsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RankingsRepositoryRef = AutoDisposeProviderRef<RankingsRepository>;
String _$rankingTeamsListHash() => r'56013875e0d5cb212b09a9c99b2b7d3bf03db633';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [rankingTeamsList].
@ProviderFor(rankingTeamsList)
const rankingTeamsListProvider = RankingTeamsListFamily();

/// See also [rankingTeamsList].
class RankingTeamsListFamily extends Family<AsyncValue<List<RankingTeam>>> {
  /// See also [rankingTeamsList].
  const RankingTeamsListFamily();

  /// See also [rankingTeamsList].
  RankingTeamsListProvider call(
    String regionCode,
  ) {
    return RankingTeamsListProvider(
      regionCode,
    );
  }

  @override
  RankingTeamsListProvider getProviderOverride(
    covariant RankingTeamsListProvider provider,
  ) {
    return call(
      provider.regionCode,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'rankingTeamsListProvider';
}

/// See also [rankingTeamsList].
class RankingTeamsListProvider
    extends AutoDisposeFutureProvider<List<RankingTeam>> {
  /// See also [rankingTeamsList].
  RankingTeamsListProvider(
    String regionCode,
  ) : this._internal(
          (ref) => rankingTeamsList(
            ref as RankingTeamsListRef,
            regionCode,
          ),
          from: rankingTeamsListProvider,
          name: r'rankingTeamsListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rankingTeamsListHash,
          dependencies: RankingTeamsListFamily._dependencies,
          allTransitiveDependencies:
              RankingTeamsListFamily._allTransitiveDependencies,
          regionCode: regionCode,
        );

  RankingTeamsListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.regionCode,
  }) : super.internal();

  final String regionCode;

  @override
  Override overrideWith(
    FutureOr<List<RankingTeam>> Function(RankingTeamsListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RankingTeamsListProvider._internal(
        (ref) => create(ref as RankingTeamsListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        regionCode: regionCode,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<RankingTeam>> createElement() {
    return _RankingTeamsListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RankingTeamsListProvider && other.regionCode == regionCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, regionCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RankingTeamsListRef on AutoDisposeFutureProviderRef<List<RankingTeam>> {
  /// The parameter `regionCode` of this provider.
  String get regionCode;
}

class _RankingTeamsListProviderElement
    extends AutoDisposeFutureProviderElement<List<RankingTeam>>
    with RankingTeamsListRef {
  _RankingTeamsListProviderElement(super.provider);

  @override
  String get regionCode => (origin as RankingTeamsListProvider).regionCode;
}

String _$selectedRegionHash() => r'd1251f9c810983d7829eef781964a2172a3d767b';

/// See also [SelectedRegion].
@ProviderFor(SelectedRegion)
final selectedRegionProvider =
    AutoDisposeNotifierProvider<SelectedRegion, Region>.internal(
  SelectedRegion.new,
  name: r'selectedRegionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedRegionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedRegion = AutoDisposeNotifier<Region>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
