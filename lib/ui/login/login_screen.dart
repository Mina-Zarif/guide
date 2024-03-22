import 'dart:async';

import 'package:chat/model/my_user.dart';
import 'package:chat/provider/user_provider.dart';
import 'package:chat/ui/home/home_screen.dart';
import 'package:chat/ui/login/login_navigator.dart';
import 'package:chat/ui/login/login_view_model.dart';
import 'package:chat/ui/register/register_screen.dart';
import 'package:chat/utils.dart' as utils;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/functions.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> implements LoginNavigator {
  var formkey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  LoginViewModel viewModel = LoginViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.navigator = this;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Login',
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      labelText: 'Email',
                    ),
                    onChanged: (text) {
                      email = text;
                    },
                    validator: (text) => emailValidation(text ?? '')),
                const SizedBox(height: 25),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  onChanged: (text) => password = text,
                  validator: (text) => passwordValidation(text ?? ''),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                    onPressed: () => validateForm(),
                    child: const Text('Login')),
                const SizedBox(height: 25),
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(RegisterScreen.routeName),
                  child: const Text('Create account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateForm() {
    if (formkey.currentState?.validate() == true) {
      viewModel.loginFirebaseAuth(email, password);
    }
  }

  @override
  void hideLoading() {
    // TODO: implement hideLoading
    utils.hideLoading(context);
  }

  @override
  void showLoading() {
    // TODO: implement showLoading
    utils.showLoading(context);
  }

  @override
  void showMessage(String message) {
    // TODO: implement showMessage
    utils.showMessage(message, context, 'Ok', (context) {
      Navigator.pop(context);
    });
  }

  @override
  void navigateToHome(MyUser user) {
    var userProvider = Provider.of<UserProvider>(context, listen: false);
    userProvider.user = user;
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
  }
}
