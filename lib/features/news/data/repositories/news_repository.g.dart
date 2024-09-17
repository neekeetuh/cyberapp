// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsRepositoryHash() => r'96699b22dbe04b3529e9b12a53a04152d825afd3';

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

/// See also [newsRepository].
@ProviderFor(newsRepository)
const newsRepositoryProvider = NewsRepositoryFamily();

/// See also [newsRepository].
class NewsRepositoryFamily extends Family<NewsRepository> {
  /// See also [newsRepository].
  const NewsRepositoryFamily();

  /// See also [newsRepository].
  NewsRepositoryProvider call(
    Dio dio,
  ) {
    return NewsRepositoryProvider(
      dio,
    );
  }

  @override
  NewsRepositoryProvider getProviderOverride(
    covariant NewsRepositoryProvider provider,
  ) {
    return call(
      provider.dio,
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
  String? get name => r'newsRepositoryProvider';
}

/// See also [newsRepository].
class NewsRepositoryProvider extends AutoDisposeProvider<NewsRepository> {
  /// See also [newsRepository].
  NewsRepositoryProvider(
    Dio dio,
  ) : this._internal(
          (ref) => newsRepository(
            ref as NewsRepositoryRef,
            dio,
          ),
          from: newsRepositoryProvider,
          name: r'newsRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsRepositoryHash,
          dependencies: NewsRepositoryFamily._dependencies,
          allTransitiveDependencies:
              NewsRepositoryFamily._allTransitiveDependencies,
          dio: dio,
        );

  NewsRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dio,
  }) : super.internal();

  final Dio dio;

  @override
  Override overrideWith(
    NewsRepository Function(NewsRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewsRepositoryProvider._internal(
        (ref) => create(ref as NewsRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dio: dio,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<NewsRepository> createElement() {
    return _NewsRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewsRepositoryProvider && other.dio == dio;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dio.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewsRepositoryRef on AutoDisposeProviderRef<NewsRepository> {
  /// The parameter `dio` of this provider.
  Dio get dio;
}

class _NewsRepositoryProviderElement
    extends AutoDisposeProviderElement<NewsRepository> with NewsRepositoryRef {
  _NewsRepositoryProviderElement(super.provider);

  @override
  Dio get dio => (origin as NewsRepositoryProvider).dio;
}

String _$newsListHash() => r'005a8f57a360755a0b44d50e3f90f76ef7eb21b0';

/// See also [newsList].
@ProviderFor(newsList)
final newsListProvider = AutoDisposeFutureProvider<List<NewsData>>.internal(
  newsList,
  name: r'newsListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NewsListRef = AutoDisposeFutureProviderRef<List<NewsData>>;
String _$newsDetailHash() => r'167a6a06ebdb52316078197ff8885364099e123e';

/// See also [newsDetail].
@ProviderFor(newsDetail)
const newsDetailProvider = NewsDetailFamily();

/// See also [newsDetail].
class NewsDetailFamily extends Family<AsyncValue<NewsData>> {
  /// See also [newsDetail].
  const NewsDetailFamily();

  /// See also [newsDetail].
  NewsDetailProvider call(
    String url,
  ) {
    return NewsDetailProvider(
      url,
    );
  }

  @override
  NewsDetailProvider getProviderOverride(
    covariant NewsDetailProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'newsDetailProvider';
}

/// See also [newsDetail].
class NewsDetailProvider extends AutoDisposeFutureProvider<NewsData> {
  /// See also [newsDetail].
  NewsDetailProvider(
    String url,
  ) : this._internal(
          (ref) => newsDetail(
            ref as NewsDetailRef,
            url,
          ),
          from: newsDetailProvider,
          name: r'newsDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsDetailHash,
          dependencies: NewsDetailFamily._dependencies,
          allTransitiveDependencies:
              NewsDetailFamily._allTransitiveDependencies,
          url: url,
        );

  NewsDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Override overrideWith(
    FutureOr<NewsData> Function(NewsDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewsDetailProvider._internal(
        (ref) => create(ref as NewsDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<NewsData> createElement() {
    return _NewsDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewsDetailProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewsDetailRef on AutoDisposeFutureProviderRef<NewsData> {
  /// The parameter `url` of this provider.
  String get url;
}

class _NewsDetailProviderElement
    extends AutoDisposeFutureProviderElement<NewsData> with NewsDetailRef {
  _NewsDetailProviderElement(super.provider);

  @override
  String get url => (origin as NewsDetailProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
