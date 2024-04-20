import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/data/fetch_image.dart';
import 'package:flutter_gallery_app/screen/detail.ui.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  late Future<List<Map<String, dynamic>>> futureImages;

  @override
  void initState() {
    super.initState();
    futureImages = fetchImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GalleryScreen'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: futureImages,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: snapshot.data?.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(
                              url: snapshot.data?[index]['url'],
                              tag: 'image$index',
                            );
                          }));
                        },
                        child: Hero(
                          tag: 'image$index',
                          child: Image.network(
                            snapshot.data?[index]['url'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text('Likes: ${snapshot.data?[index]['likes']}'),
                    Text('Views: ${snapshot.data?[index]['views']}'),
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
