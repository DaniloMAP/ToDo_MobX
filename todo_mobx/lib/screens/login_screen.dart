import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart'; // Importe o pacote flutter_mobx
import 'package:todo_mobx/stores/login_store.dart';
import 'package:todo_mobx/widgets/custom_icon_button.dart';
import 'package:todo_mobx/widgets/custom_text_field.dart';

import 'list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginStore loginStore =
      LoginStore(); // Certifique-se de que loginStore seja final
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(32),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CustomTextField(
                    hint: 'E-mail',
                    prefix: Icon(Icons.account_circle),
                    textInputType: TextInputType.emailAddress,
                    onChanged: loginStore.setEmail,
                    enabled: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Observer(
                    builder: (_) {
                      return CustomTextField(
                        hint: 'Senha',
                        prefix: Icon(Icons.lock),
                        obscure: !loginStore.passwordVisible,
                        onChanged: loginStore.setPassword,
                        enabled: true,
                        suffix: CustomIconButton(
                          radius: 32,
                          iconData: loginStore.passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          onTap: loginStore.togglePasswordVisibility,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Observer(
                    // Usar o Observer para atualizar o botão com base no estado do LoginStore
                    builder: (_) {
                      return SizedBox(
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            backgroundColor: Theme.of(context).primaryColor,
                            foregroundColor: Colors.white,
                            elevation: 0,
                          ),
                          onPressed: loginStore.isFormatValid
                              ? () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => ListScreen()),
                                  );
                                }
                              : null,
                          child: Text('Login'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
