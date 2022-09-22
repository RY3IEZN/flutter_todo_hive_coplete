import 'package:flutter/material.dart';
import 'package:todo_app_hive/utils/custom_buttons.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Add a new Task", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CustomButtons(btnText: "Save", onPressed: () {}),
                SizedBox(
                  width: 10,
                ),
                CustomButtons(btnText: "Cancel", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
