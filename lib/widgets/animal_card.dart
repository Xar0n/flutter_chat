import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/animal_model.dart';

class AnimalCardWidget extends StatelessWidget {
  const AnimalCardWidget({
    super.key,
    required this.animal,
    required this.onAnimalPressed,
  });

  final Animal animal;
  final void Function() onAnimalPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onAnimalPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.red,
              offset: Offset(5, 5),
              blurRadius: 10,
            ),
          ],
          border: Border.all(
            width: 10,
            color: Colors.green,
          ),
        ),
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Text(
              animal.name,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.yellow,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 15),
            Text('возраст: ${animal.age}'),
            const SizedBox(height: 15),
            Text(animal.weigth.toString()),
            ElevatedButton(
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: Text('bottomsheet'),
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Показать боттомшит',
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
