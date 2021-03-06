import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class TextFieldCustom extends StatelessWidget {
  final String labelText;
  TextFieldCustom({this.labelText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).accentColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              AppConstants.kDefaultPadding,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              AppConstants.kDefaultPadding,
            ),
          ),
        ),
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}
