import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppConstants.kDefaultPadding * 4,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: AppConstants.kDefaultPadding * 4,
              ),
              width: MediaQuery.of(context).size.width * 0.72,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good morning, John Doe',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Card(
                  child: Container(
                    color: Colors.red,
                    margin: const EdgeInsets.only(
                      right: AppConstants.kDefaultPadding * 4,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notification',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
