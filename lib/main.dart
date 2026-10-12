import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _seccion = 0;

  final List<Widget> _pantallas = const [
    HomeScreen(),
    ChatsScreen(),
    LaboratoryScreen(),
  ];

  final List<String> _titulos = const [
    'Home',
    'Chats',
    'Laboratorio',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulos[_seccion]),
        backgroundColor: Colors.blue,
      ),
      body: _pantallas[_seccion],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seccion,
        onTap: (indice) {
          setState(() {
            _seccion = indice;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Lab'),
        ],
      ),
    );
  }
}