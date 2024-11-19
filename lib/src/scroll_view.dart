import 'package:flutter/material.dart';

class ScrollView extends StatefulWidget {
  const ScrollView({super.key});

  @override
  State<ScrollView> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ScrollView> {
  @override
  Widget build(BuildContext context) {
    return CarouselView(
      scrollDirection: Axis.vertical,
      itemExtent: double.infinity,
      children: List<Widget>.generate(10, (int index) {
        return Center(child: Text('Item $index'));
      }),
    );
  }
}
