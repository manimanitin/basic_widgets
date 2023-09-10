import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'random_color.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Widget')),
        body: const ListViewExample(),
      ),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      addAutomaticKeepAlives: false,
      itemBuilder: (_, index) {
        return Container(
          color: randomColor(),
          width: 500,
          height: 500,
          child: Center(child: Text(loremIpsum(words: 15))),
        );
      },
    );
  }
}
