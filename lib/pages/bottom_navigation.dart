import 'package:flutter/material.dart';
import 'alert_button.dart';
import 'card_widget.dart';
import 'checkbox_widget.dart';
import 'date_widget.dart';

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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'hazme clic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'mejor a mi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'no, a mi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            label: 'a mi no',
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
