import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_demo/User.dart';
import 'package:redux_demo/page/second_page.dart';
import 'package:redux_demo/redux/gsy_state.dart';

class FirstPage extends StatefulWidget {
  static final String sName = "/";

  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<GSYState, User?>(
      converter: (store) {
        return store.state.userInfo;
      },
      builder: (context, userInfo) {
        return Scaffold(
          body: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SecondPage.sName);
              },
              child: Text(userInfo!.name!),
            ),
          ),
        );
      },
    );
  }
}
