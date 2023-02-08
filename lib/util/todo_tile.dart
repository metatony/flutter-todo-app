import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TOdoTile extends StatelessWidget {
  TOdoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteFunction});

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
            )
          ],
        ),
        child: ListTile(
          tileColor: Color(0xff37474f),
          title: Text(
            taskName,
            style: TextStyle(
                color: Colors.white,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                //decorationColor: Colors.red,
                decorationThickness: 2.85),
          ),
          leading: Checkbox(
            activeColor: Colors.green,
            onChanged: onChanged,
            value: taskCompleted,
            shape: const CircleBorder(),
          ),
        ),
      ),
    );
  }
}
