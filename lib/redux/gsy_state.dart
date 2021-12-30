
import 'package:redux_demo/redux/user_redux.dart';

import '../User.dart';
import 'login_reducer.dart';

class GSYState{
  ///用户信息
  User? userInfo;
  ///是否登录
  bool? login;
  GSYState({this.userInfo, this.login});
}


///创建 Reducer
GSYState appReducer(GSYState state, action) {
  return GSYState(
    ///通过 UserReducer 将 GSYState 内的 userInfo 和 action 关联在一起
    userInfo: UserReducer(state.userInfo, action),
    login: LoginReducer(state.login, action),
  );
}