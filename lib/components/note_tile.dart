import 'package:flutter/material.dart';
import 'package:notesapp/components/note_settings.dart';
import 'package:popover/popover.dart';

class NoteTile extends StatelessWidget {
  final String text;
  void Function()? onEditPressed;
  void Function()? onDeletePressed;

  NoteTile(
      {super.key,
      required this.text,
      required this.onDeletePressed,
      required this.onEditPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(top: 10, left: 25, right: 25),
      child: ListTile(
        title: Text(text),
        trailing: Builder(
          builder: (context) => IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: ()=> showPopover(
            width: 100,
            height: 100,
            backgroundColor: Theme.of(context).colorScheme.surface,
            context: context, 
            bodyBuilder: (context) => NoteSettings(
              onEditTap: onEditPressed,
              onDeleteTap: onDeletePressed,
            ),
          ),
        )
        )
      ),
    );
  }
}
