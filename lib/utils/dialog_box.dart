import 'package:flutter/material.dart';
import 'package:todo_app_hive/utils/custom_buttons.dart';

class DialogBox extends StatelessWidget {
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: "Add a new Task", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CustomButtons(btnText: "Save", onPressed: onSave),
                SizedBox(
                  width: 10,
                ),
                CustomButtons(btnText: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
