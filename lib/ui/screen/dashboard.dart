import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class Dashboard extends StatelessWidget {
  final ScrollController _gridController = ScrollController();
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
                  const SizedBox(
                    height: 100,
                    child: Text('Project'),
                  ),
                  Expanded(
                    child: SizedBox(
                      
                      width: 700,
                      child: GridView.builder(
                        itemCount: 6,
                        controller: _gridController,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.75,
                        ),
                        itemBuilder: (context, index) => SizedBox(
                          child: ItemCard(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
