
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'album.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AlbumPage(),
    );
  }
}

Future<List<Album>> fetchAlbums() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
  );

  if (response.statusCode == 200) {
    List<dynamic> jsonList = jsonDecode(response.body);

    return jsonList
        .map((json) => Album.fromJson(json))
        .toList();
  } else {
    throw Exception('Failed to load albums');
  }
}

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Albums'),
      ),
      body: FutureBuilder<List<Album>>(
        future: fetchAlbums(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          final albums = snapshot.data ?? [];

          if (albums.isEmpty) {
            return const Center(
              child: Text('No albums found'),
            );
          }

          return ListView.builder(
            itemCount: albums.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.album),
                title: Text(albums[index].title),
              );
            },
          );
        },
      ),
    );
  }
}
