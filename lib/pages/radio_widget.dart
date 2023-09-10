import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Radio')),
        body: const Center(
          child: RadioExample(),
        ),
      ),
    );
  }
}

enum Revolucionarios { panchovilla, emizapata }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  Revolucionarios? _character = Revolucionarios.panchovilla;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Pancho Villa'),
          leading: Radio<Revolucionarios>(
            value: Revolucionarios.panchovilla,
            groupValue: _character,
            onChanged: (Revolucionarios? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Emiliano Zapata'),
          leading: Radio<Revolucionarios>(
            value: Revolucionarios.emizapata,
            groupValue: _character,
            onChanged: (Revolucionarios? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Center(
          child: Text(
              'Elegiste al revolucionario del ${_character == Revolucionarios.emizapata ? 'sur' : 'norte'}'),
        )
      ],
    );
  }
}
