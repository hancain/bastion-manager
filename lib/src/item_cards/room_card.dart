import 'package:flutter/material.dart';

class RoomCard extends StatefulWidget {
  final String roomName;
  // pass in array of rooms
  // pass in array of tasks in rooms or general task

  const RoomCard({super.key, required this.roomName});

  @override
  State<RoomCard> createState() => _RoomCard();
}

class _RoomCard extends State<RoomCard> {
  @override
  Widget build(BuildContext context) {
    return const Row(children: <Widget>[
      Column(
        children: <Widget>[Text("Room Name"), Text("Order")],
      ),
      Column(children: <Widget>[
        Text("Lv X"),
      ])
    ]);
  }
}
