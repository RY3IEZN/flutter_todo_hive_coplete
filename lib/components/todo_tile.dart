import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      this.onChanged});

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            Text(
              taskName,
              style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
