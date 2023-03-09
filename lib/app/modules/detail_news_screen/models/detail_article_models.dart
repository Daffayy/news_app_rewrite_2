import 'dart:convert';

List<DetailScreenNews> articleScreenFromJson(String str) => List<DetailScreenNews>.from(json.decode(str).map((x) => DetailScreenNews.fromJson(x)));

String articleScreenToJson(List<DetailScreenNews> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DetailScreenNews {
  DetailScreenNews({
     this.userId,
     this.id,
     this.title,
     this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory DetailScreenNews.fromJson(Map<String, dynamic> json) => DetailScreenNews(
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