import 'package:flutter/material.dart';

class Filepickerbutton extends StatelessWidget {
  const Filepickerbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10)),
      color: Colors.amber,
      child: Text('choose file'),
    );
  }
}
