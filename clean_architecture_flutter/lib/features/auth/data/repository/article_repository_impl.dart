import 'package:clean_architecture_flutter/core/resources/data_state.dart';
import 'package:clean_architecture_flutter/features/auth/data/models/article.dart';
import 'package:clean_architecture_flutter/features/auth/domain/entities/article.dart';
import 'package:clean_architecture_flutter/features/auth/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
