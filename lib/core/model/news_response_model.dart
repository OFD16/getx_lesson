import 'package:getx_lesson/core/model/article.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_response_model.g.dart';

@JsonSerializable(nullable: false)
class NewsResponse {

  NewsResponse();

  @JsonKey(name: "status")
  late String status;

  @JsonKey(name: "totalResults")
  late int totalResults;

  @JsonKey(name: "articles")
  late List<Article> articles;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}
