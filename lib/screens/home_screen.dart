import 'package:flutter/material.dart';
import 'package:finder/widgets/my_app_bar.dart';
import 'package:finder/data/bachelors_data.dart';

class BachelorsMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Welcome on Finder'),
      body: Center(
        child: Text(
          'Bachelor App',
          style: TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}
