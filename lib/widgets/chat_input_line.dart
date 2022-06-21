import 'package:flutter/material.dart';

class ChatInputLine extends StatelessWidget {
  const ChatInputLine({
    Key? key,
    // required this.onTextFieldChange,
    required this.controller,
    required this.onSendTap,
  }) : super(key: key);

  final TextEditingController controller;
  final void Function() onSendTap;
  // final void Function(String? value) onTextFieldChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        Expanded(
          child: TextField(
            style: TextStyle(fontSize: 14.0, height: 1.4, color: Colors.black),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Введите сообщение...',
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(20.0),
            ),
            textCapitalization: TextCapitalization.sentences,
            // onChanged: onTextFieldChange,
            controller: controller,
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          iconSize: 25.0,
          color: Theme.of(context).primaryColor,
          onPressed: onSendTap,
          icon: const Icon(Icons.send_rounded),
        ),
      ],
    );
  }
}
