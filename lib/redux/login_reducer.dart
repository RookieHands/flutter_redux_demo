
import 'package:redux/redux.dart';



//TypedReducer: 用来根据action过滤执行指定的reducer

final LoginReducer = combineReducers<bool?>([
  TypedReducer<bool?, UpdateLoginAction>(_updateLoaded),
]);

bool? _updateLoaded(bool? isLogin, action) {
  isLogin = action.login;
  return isLogin;
}
class UpdateLoginAction{
  ///是否登录
  bool? login;
  UpdateLoginAction(this.login);
}