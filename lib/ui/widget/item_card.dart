import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(
          AppConstants.kDefaultPadding * 3,
        ),
      ),
    );
  }
}
