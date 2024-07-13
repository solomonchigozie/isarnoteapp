import 'package:flutter/material.dart';

class NoteSettings extends StatelessWidget {
  void Function()? onEditTap;
  void Function()? onDeleteTap;

  NoteSettings({super.key, required this.onDeleteTap, required this.onEditTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //edit
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            onEditTap!();
          },
          child: Container(
            color: Theme.of(context).colorScheme.surface,
            height: 50,
            child: Center(
              child: Text(
                'Edit',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        GestureDetector(
           onTap: () {
            Navigator.pop(context);
            onDeleteTap!();
          },
          child: Container(
            color: Theme.of(context).colorScheme.surface,
            height: 50,
            child: Center(
                child: Text(
              'Delete',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold),
            )),
          ),
        )

        //delete
      ],
    );
  }
}
