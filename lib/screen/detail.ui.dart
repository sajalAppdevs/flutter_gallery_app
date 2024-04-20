import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String url;
  final String tag;

  const DetailScreen({super.key, required this.url, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: tag,
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}
