import 'package:flutter/material.dart';
import 'alert_button.dart';
import 'card_widget.dart';
import 'checkbox_widget.dart';
import 'date_widget.dart';
import 'drawer_widget.dart';

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    AlertButton(),
    CardWidget(),
    CheckboxWidget(),
    DatePickerWidget()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets básicos'),
      ),
      drawer: const DrawerWidget(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Alert dialog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Checkbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            label: 'Date picker',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }
}
