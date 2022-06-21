import 'package:flutter/material.dart';
import 'package:message_app/models/message_model.dart';
import 'package:message_app/widgets/message_chat.dart';

import 'animal_card.dart';
import '../models/animal_model.dart';
import 'chat_input_line.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

extension RandomListItem<T> on List<T> {
  T randomItem() {
    return this[Random().nextInt(length)];
  }
}

class _MyHomePageState extends State<MyHomePage> {
  List<Animal> animals = [];
  List<Message> messages = [];
  static const List<String> answers = [
    'Доброе утро!',
    'Добрый день!',
    'Добрый вечер!',
    'Доброй ночи!',
    'Хай!',
    'Здравия желаю!',
    'Пока!',
  ];

  final controller = TextEditingController();

  @override
  void initState() {
    animals.addAll([Animal(), Animal()]);
    super.initState();
  }

  void onSendButtonTap() {
    messages.add(Message('Антон', controller.text));
    print(controller.text); 
    answer();
    controller.clear();
  }

  Future answer() async {
    setState(() {});
    await Future.delayed(const Duration(seconds: 5));
    messages.add(Message('Алиса', answers.randomItem()));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Чат'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: List.generate(
                messages.length,
                (i) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ChatMessage(messages[i])
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
             decoration: BoxDecoration(
               color: Colors.grey[100],
               border: Border.all(color: Colors.blueAccent),
               borderRadius: BorderRadius.all(Radius.circular(5)),
             ),
            child: ChatInputLine(
              controller: controller,
              onSendTap: onSendButtonTap,
              // onTextFieldChange: onTextFieldChange,
            ),
          ),
        ],
      ),
    );
  }
}


/*
- поле ввода
- кнопка отправки
- список сообщений
*/
