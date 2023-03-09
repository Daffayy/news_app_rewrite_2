// To parse this JSON data, do
//
//     final articleNews = articleNewsFromJson(jsonString);

import 'dart:convert';

List<ArticleNews> articleNewsFromJson(String str) => List<ArticleNews>.from(json.decode(str).map((x) => ArticleNews.fromJson(x)));

String articleNewsToJson(List<ArticleNews> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ArticleNews {
  ArticleNews({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory ArticleNews.fromJson(Map<String, dynamic> json) => ArticleNews(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
