import 'package:flutter/material.dart';
import 'package:my_quiz/domain/model/notes_model.dart';
import 'package:my_quiz/ui/screens/AddEditScreen/components/body.dart';
import 'package:my_quiz/ui/screens/HomeScreen/home_screen.dart';

class AddEditScreen extends StatelessWidget {
  //note details
  final Note? note;

  const AddEditScreen({super.key, this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacement(context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            }),
        centerTitle: true,
        title: const Text(
          'Edit Or Add',
        ),
      ),
      body: Body(note: note),
    );
  }
}
