import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsFeed(),
    );
  }
}

class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? VerticalNewsList()
              : HorizontalNewsList();
        },
      ),
    );
  }
}

class VerticalNewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Image.network('https://placekitten.com/80/80'),
            title: Text('News Title $index'),
            subtitle: Text('News Description $index'),
          ),
        );
      },
    );
  }
}

class HorizontalNewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network('https://placekitten.com/200/120'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('News Title $index'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}