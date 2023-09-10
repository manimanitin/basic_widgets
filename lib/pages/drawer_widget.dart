import 'package:flutter/material.dart';
import 'form_widget.dart';
import 'list_view.dart';

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
          title: const Text('Form y form field'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FormWidget()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.list_alt),
          title: const Text('list view'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListViewWidget()),
            );
          },
        ),
        const ListTile(
          leading: Icon(Icons.radio_button_checked),
          title: Text('Radio'),
        ),
        const ListTile(
          leading: Icon(Icons.fit_screen_outlined),
          title: Text('single child scrollview'),
        )
      ],
    ));
  }
}
