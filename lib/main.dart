import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_demo/page/first_page.dart';
import 'package:redux_demo/page/second_page.dart';
import 'package:redux_demo/redux/gsy_state.dart';
import 'User.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppful();
  }
}

class MyAppful extends StatefulWidget {
  MyAppful({Key? key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyAppful> {
  final store = Store<GSYState>(appReducer,
      initialState: GSYState(userInfo: User("name", "1"), login: false));

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
          routes: {
            FirstPage.sName: (context) {
              return FirstPage();
            },
            SecondPage.sName: (context) {
              return SecondPage();
            },
          },
          title: "ahahh",
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        ));
  }
}
