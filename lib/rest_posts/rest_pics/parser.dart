import 'dart:convert';

List<Pics> picsFromJson(String str) => List<Pics>.from(json.decode(str).map((x) => Pics.fromJson(x)));

String picsToJson(List<Pics> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pics {
  Pics({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory Pics.fromJson(Map<String, dynamic> json) => Pics(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
