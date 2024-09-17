// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$statsRepositoryHash() => r'ad48879ab41c8f152c89926aac51e802bae0acd4';

/// See also [statsRepository].
@ProviderFor(statsRepository)
final statsRepositoryProvider = AutoDisposeProvider<StatsRepository>.internal(
  statsRepository,
  name: r'statsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$statsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StatsRepositoryRef = AutoDisposeProviderRef<StatsRepository>;
String _$statsListHash() => r'351a2073494e49080e3e20f016cce424872670e0';

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

/// See also [statsList].
@ProviderFor(statsList)
const statsListProvider = StatsListFamily();

/// See also [statsList].
class StatsListFamily extends Family<AsyncValue<List<Stats>>> {
  /// See also [statsList].
  const StatsListFamily();

  /// See also [statsList].
  StatsListProvider call(
    StatsRegion region,
    StatsTimeSpans timeSpan,
  ) {
    return StatsListProvider(
      region,
      timeSpan,
    );
  }

  @override
  StatsListProvider getProviderOverride(
    covariant StatsListProvider provider,
  ) {
    return call(
      provider.region,
      provider.timeSpan,
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
  String? get name => r'statsListProvider';
}

/// See also [statsList].
class StatsListProvider extends AutoDisposeFutureProvider<List<Stats>> {
  /// See also [statsList].
  StatsListProvider(
    StatsRegion region,
    StatsTimeSpans timeSpan,
  ) : this._internal(
          (ref) => statsList(
            ref as StatsListRef,
            region,
            timeSpan,
          ),
          from: statsListProvider,
          name: r'statsListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$statsListHash,
          dependencies: StatsListFamily._dependencies,
          allTransitiveDependencies: StatsListFamily._allTransitiveDependencies,
          region: region,
          timeSpan: timeSpan,
        );

  StatsListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.region,
    required this.timeSpan,
  }) : super.internal();

  final StatsRegion region;
  final StatsTimeSpans timeSpan;

  @override
  Override overrideWith(
    FutureOr<List<Stats>> Function(StatsListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StatsListProvider._internal(
        (ref) => create(ref as StatsListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        region: region,
        timeSpan: timeSpan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Stats>> createElement() {
    return _StatsListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StatsListProvider &&
        other.region == region &&
        other.timeSpan == timeSpan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, region.hashCode);
    hash = _SystemHash.combine(hash, timeSpan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StatsListRef on AutoDisposeFutureProviderRef<List<Stats>> {
  /// The parameter `region` of this provider.
  StatsRegion get region;

  /// The parameter `timeSpan` of this provider.
  StatsTimeSpans get timeSpan;
}

class _StatsListProviderElement
    extends AutoDisposeFutureProviderElement<List<Stats>> with StatsListRef {
  _StatsListProviderElement(super.provider);

  @override
  StatsRegion get region => (origin as StatsListProvider).region;
  @override
  StatsTimeSpans get timeSpan => (origin as StatsListProvider).timeSpan;
}

String _$selectedStatsRegionHash() =>
    r'86775d6ead11bc3fe957ea252ddd5b7a171c8655';

/// See also [SelectedStatsRegion].
@ProviderFor(SelectedStatsRegion)
final selectedStatsRegionProvider =
    AutoDisposeNotifierProvider<SelectedStatsRegion, StatsRegion>.internal(
  SelectedStatsRegion.new,
  name: r'selectedStatsRegionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedStatsRegionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedStatsRegion = AutoDisposeNotifier<StatsRegion>;
String _$selectedStatsTimeSpanHash() =>
    r'8b519996022bf597b24beda0d7f3cba96b1d90e5';

/// See also [SelectedStatsTimeSpan].
@ProviderFor(SelectedStatsTimeSpan)
final selectedStatsTimeSpanProvider =
    AutoDisposeNotifierProvider<SelectedStatsTimeSpan, StatsTimeSpans>.internal(
  SelectedStatsTimeSpan.new,
  name: r'selectedStatsTimeSpanProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedStatsTimeSpanHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedStatsTimeSpan = AutoDisposeNotifier<StatsTimeSpans>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
