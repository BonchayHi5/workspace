import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WorkSpace',
          style: Theme.of(context).textTheme.headline5,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.kDefaultPadding,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Don\'t have an account',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 300,
            child: Center(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldCustom(
                      labelText: 'Username',
                    ),
                    SizedBox(
                      height: AppConstants.kDefaultPadding + 2,
                    ),
                    TextFieldCustom(
                      labelText: 'Password',
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppConstants.kDefaultPadding * 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: AppConstants.kDefaultPadding - 3,
                                ),
                                child: Text(
                                  'Remember Me',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  AppConstants.HomeScreen,
                                );
                              },
                              child: Text(
                                'LOGIN',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
