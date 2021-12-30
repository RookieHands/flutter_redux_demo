import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_demo/User.dart';
import 'package:redux_demo/redux/gsy_state.dart';
import 'package:redux_demo/redux/user_redux.dart';

class SecondPage extends StatefulWidget {
  static final String sName = "SecondPage";

  String? content = '';

  SecondPage({Key? key, this.content}) : super(key: key);

  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<GSYState, VoidCallback>(
        converter: (store) {
          return () {
            store.dispatch(UpdateUserAction(User("哈哈哈", "12")));
            Navigator.pop(context);
          };
        },
        builder: (context, callback) {
          return Center(
            child: GestureDetector(
              onTap: callback,
              child: Text("第二个页面"),
            ),
          );
        },
      ),
    );
  }
}
