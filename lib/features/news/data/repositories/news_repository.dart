import 'dart:developer';

import 'package:cyberapp/features/news/data/data.dart';
import 'package:cyberapp/features/news/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

class NewsRepository {
  final Dio dio;
  final Box<NewsData> newsBox;

  const NewsRepository({
    required this.dio,
    required this.newsBox,
  });

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
    NewsRepository(dio: dio, newsBox: GetIt.I<Box<NewsData>>());

@riverpod
Future<List<NewsData>> newsList(NewsListRef ref) async {
  var newsList = <NewsData>[];
  final newsRepository = ref.read(newsRepositoryProvider(Dio()));
  try {
    newsList = await newsRepository._fetchNewsListFromApi();
    final newsMap = {for (var e in newsList) e.urlPath: e};
    newsRepository.newsBox.putAll(newsMap);
  } catch (e) {
    log('couldn\'t get news list from api');
    newsList = newsRepository.newsBox.values.toList();
  }
  newsList.sort((a, b) => b.date.compareTo(a.date));
  return newsList;
}

@riverpod
Future<NewsData> newsDetail(NewsDetailRef ref, String url) async {
  NewsData? newsDetail;
  final newsRepository = ref.read(newsRepositoryProvider(Dio()));
  try {
    final newsList = await newsRepository._fetchNewsListFromApi();
    newsDetail = newsList.singleWhere((news) => news.urlPath == url);
  } catch (e) {
    newsDetail = newsRepository.newsBox.get(url);
  }
  if (newsDetail == null) throw (Exception('couldn\'t get news detail'));
  return newsDetail;
}
