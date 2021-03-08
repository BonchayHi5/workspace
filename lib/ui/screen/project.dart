import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Project',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
