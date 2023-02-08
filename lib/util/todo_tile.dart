import 'package:flutter/material.dart';

class TOdoTile extends StatelessWidget {
  TOdoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ListTile(
        tileColor: Color(0xff37474f),
        title: Text(
          taskName,
          style: TextStyle(
              color: Colors.white,
              decoration: taskCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        leading: Checkbox(
          activeColor: Colors.green,
          onChanged: onChanged,
          value: taskCompleted,
          shape: const CircleBorder(),
        ),
      ),
    );
  }
}
