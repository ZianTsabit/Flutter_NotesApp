import 'package:flutter/material.dart';
import 'package:flutter_belajar/models/NotesOperation.dart';
import 'package:flutter_belajar/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
