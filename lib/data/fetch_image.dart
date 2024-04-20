import 'dart:convert';
import 'package:flutter_gallery_app/constants/url.consts.dart';
import 'package:http/http.dart' as http;

Future<List<Map<String, dynamic>>> fetchImages() async {
  final response = await http.get(
    Uri.parse(
      '${URL.baseUrl}?key=${URL.apiKey}&q=yellow+flowers&image_type=photo&pretty=true',
    ),
  );

  if (response.statusCode == 200) {
    final jsonResponse = jsonDecode(response.body);
    final hits = jsonResponse['hits'] as List;
    return hits
        .map((hit) => {
              'url': hit['webformatURL'] as String,
              'likes': hit['likes'] as int,
              'views': hit['views'] as int,
            })
        .toList();
  } else {
    throw Exception('Failed to load images from Pixabay');
  }
}
