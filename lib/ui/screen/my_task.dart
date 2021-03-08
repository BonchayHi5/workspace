import 'package:flutter/material.dart';

class MyTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'My Task',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
