import 'package:flutter/material.dart';
import 'form_widget.dart';
import 'list_view.dart';
import 'radio_widget.dart';
import 'single_child_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Header del Drawer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.format_align_center),
          title: const Text('Form y FormField'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FormWidget()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.list_alt),
          title: const Text('ListView'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListViewWidget()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.radio_button_checked),
          title: const Text('Radio'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RadioWidget()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.fit_screen_outlined),
          title: const Text('SingleChildScrollView'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SingleChildWidget()),
            );
          },
        )
      ],
    ));
  }
}
