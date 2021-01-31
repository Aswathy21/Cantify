<<<<<<< HEAD
import 'package:cantify/data/rest3-data.dart';
import 'package:cantify/models/manager.dart';

abstract class LoginPageContract{
  void onLoginSuccess(Manager user);
=======
import 'package:cantify/data/rest-data.dart';
import 'package:cantify/data/user.dart';

abstract class LoginPageContract{
  void onLoginSuccess(User user);
>>>>>>> 504513248c2e60cf114f7caf015cdaa648bee175
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();
  LoginPagePresenter(this._view);

//Simulator login
  doLogin(String username, String password){
    api
        .login(username, password)
        .then((user) => _view.onLoginSuccess(user))
        .catchError((onError) => _view.onLoginError(onError));
  }
}