import 'package:flutter/material.dart';

class RewardCard extends StatefulWidget {
  final String rewardName;
  // pass in array of rooms
  // pass in array of tasks in rooms or general task

  const RewardCard({super.key, required this.rewardName});

  @override
  State<RewardCard> createState() => _RewardCard();
}

class _RewardCard extends State<RewardCard> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[Text("Reward Name"), Text("Task Name")],
    );
  }
}
