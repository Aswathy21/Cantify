import 'package:cantify/data/rest-data.dart';
<<<<<<< HEAD
import 'package:cantify/models/user.dart';
=======
import 'package:cantify/data/user.dart';
>>>>>>> 504513248c2e60cf114f7caf015cdaa648bee175

abstract class LoginPageContract{
  void onLoginSuccess(User user);
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