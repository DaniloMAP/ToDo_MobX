import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @computed
  bool get isEmailValid =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(email);

  @computed
  bool get isPasswordValid => password.length >= 6;

  Future<void> Function() get loginPressed {
    if (isEmailValid && isPasswordValid && !loading) {
      return () async {
        await login();
      };
    }
    return () async {}; // Retornar uma função vazia como valor padrão
  }

  @action
  Future<void> login() async {
    loading = true;
    await Future.delayed(Duration(seconds: 2));

    loading = false;
    loggedIn = true;
  }
}
