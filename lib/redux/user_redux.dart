import 'package:redux_demo/User.dart';
import 'package:redux/redux.dart';


/// redux 的 combineReducers, 通过 TypedReducer 将 UpdateUserAction 与 reducers 关联起来
final UserReducer = combineReducers<User?>([
  TypedReducer<User?, UpdateUserAction>(_updateLoaded),
]);

User? _updateLoaded(User? user, action) {
  user = action.userInfo;
  return user;
}
class UpdateUserAction{
  User? userInfo;
  UpdateUserAction(this.userInfo);
}