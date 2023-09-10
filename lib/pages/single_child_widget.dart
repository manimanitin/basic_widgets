import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'random_color.dart';

class SingleChildWidget extends StatelessWidget {
  const SingleChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SingleChildScrollView'),
        ),
        body: const MyScrollableContent(),
      ),
    );
  }
}

class MyScrollableContent extends StatelessWidget {
  const MyScrollableContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyMedium!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                      // A fixed-height child.
                      color: randomColor(), // Yellow
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('contenido fijo'),
                    ),
                    Expanded(
                      // A flexible child that will grow to fit the viewport but
                      // still be at least as big as necessary to fit its contents.
                      child: Container(
                        color: randomColor(), // Red
                        height: 100,
                        alignment: Alignment.center,
                        child: const Text('contenido dinamico'),
                      ),
                    ),
                    Expanded(
                      // A flexible child that will grow to fit the viewport but
                      // still be at least as big as necessary to fit its contents.
                      child: Container(
                        color: randomColor(), // Red
                        height: 400,
                        alignment: Alignment.center,
                        child: Text(loremIpsum(words: 100)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
