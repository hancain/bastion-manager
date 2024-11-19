import 'package:flutter/material.dart';

class CharacterCard extends StatefulWidget {
  final String characterName;
  // pass in array of rooms
  // pass in array of tasks in rooms or general task

  const CharacterCard({super.key, required this.characterName});

  @override
  State<CharacterCard> createState() => _CharacterCard();
}

class _CharacterCard extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      const Column(
        children: <Widget>[
          // image
        ],
      ),
      Column(
        children: <Widget>[
          const Text("Character Name"),
          DropdownButton<String>(
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
          DropdownButton<String>(
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          )
        ],
      )
    ]);
  }
}
