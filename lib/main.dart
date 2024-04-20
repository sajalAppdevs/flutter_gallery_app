import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/screen/gallery.ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GalleryScreen(),
    );
  }
}
