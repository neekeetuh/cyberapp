import 'package:cyberapp/features/news/data/data.dart';
import 'package:cyberapp/features/news/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

class NewsRepository {
  final Dio dio;

  NewsRepository({required this.dio});

  Future<List<NewsData>> getNewsList() async {
    var newsList = <NewsData>[];
    try {
      newsList = await _fetchNewsListFromApi();
    } catch (e) {
      throw Exception(e.toString());
    }
    newsList.sort((a, b) => b.date.compareTo(a.date));
    return newsList;
  }

  Future<List<NewsData>> _fetchNewsListFromApi() async {
    final response = await dio.get('https://vlrggapi.vercel.app/news');
    final data = response.data as Map<String, dynamic>;
    final newsListData = data['data'] as Map<String, dynamic>;
    final newsListSegments = newsListData['segments'] as List<dynamic>;
    final List<NewsData> newsList = newsListSegments
        .map((e) => NewsData.fromDto(NewsDataDto.fromJson(e)))
        .toList();
    return newsList;
  }
}

@riverpod
NewsRepository newsRepository(NewsRepositoryRef ref, Dio dio) =>
    NewsRepository(dio: dio);

@riverpod
Future<List<NewsData>> newsList(NewsListRef ref) async {
  var newsList = <NewsData>[];
  try {
    final newsRepository = ref.watch(newsRepositoryProvider(Dio()));
    newsList = await newsRepository._fetchNewsListFromApi();
  } catch (e) {
    throw Exception(e.toString());
  }
  newsList.sort((a, b) => b.date.compareTo(a.date));
  return newsList;
}

@riverpod
Future<NewsData> newsDetail(NewsDetailRef ref, String url) async {
  final newsRepository = ref.watch(newsRepositoryProvider(Dio()));
  final newsList = await newsRepository.getNewsList();
  final newsDetail = newsList.singleWhere((news) => news.urlPath == url);
  return newsDetail;
}
