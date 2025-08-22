import 'package:clean_architecture_flutter/core/resources/data_state.dart';
import 'package:clean_architecture_flutter/features/auth/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
