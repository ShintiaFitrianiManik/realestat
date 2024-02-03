// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

import 'package:real_estate/models/property.dart';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  int id;
  String nama_property;
  String tipe_property;
  String image;
  String harga;
  String status;
  // DateTime createdAt;
  // DateTime updatedAt;

  Post({
    required this.id,
    required this.nama_property,
    required this.tipe_property,
    required this.image,
    required this.harga,
    required this.status,
    // required this.createdAt,
    // required this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        nama_property: json["Nama Property"],
        tipe_property: json["Tipe Property"],
        image: json["image"],
        harga: json["Harga"],
        status: json["status"],
        // createdAt: DateTime.parse(json["created_at"]),
        // updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama property": nama_property,
        "tipe property": tipe_property,
        "image": image,
        "harga": harga,
        "status": status,
        // "created_at": createdAt.toIso8601String(),
        // "updated_at": updatedAt.toIso8601String(),
      };
}
