import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../storage/storage.dart';
import '../../../../core/core.dart';
import '../../../../ui/ui.dart';

class LoginController
    with NavigatorManager, KeyboardManager
    implements Controller {
  final showButton = ValueNotifier<bool>(false);
  final showLoad = ValueNotifier<bool>(false);
  final showError = ValueNotifier<bool>(false);

  bool get isShowButton => showButton.value;

  bool get isShowLoad => showLoad.value;

  bool get isError => showError.value;

  String _email;
  String _password;

  String error;

  @override
  void setValue(String value, Types type) {
    if (type == Types.EMAIL) {
      _email = value;
    } else {
      _password = value;
    }
    showButton.value = (_email != null && _password != null);
  }

  void validate(context) async {
    if (_showErrors().isNotEmpty) {
      closeKeyboard(context);
      showError.value = true;
    } else {
      closeKeyboard(context);
      _hasUser(context);
    }
  }

  void goTo(BuildContext context, {bool home = false}) {
    redirect(context, home ? Pages.HOME : Pages.REGISTER, replace: home);
  }

  void closeKeyboard(context) {
    hideKeyboard(context);
  }

  void hiddeError() {
    showError.value = false;
  }

  void dispose() {
    showError.dispose();
    showButton.dispose();
    showLoad.dispose();
  }

  //*************************
  // PRIVATE METHODS
  //*****
  String _showErrors() {
    String e = FormsValidators.email(_email);
    String e1 = FormsValidators.password(_password);
    error = (e.isEmpty && e1.isEmpty) ? "" : "Credenciais inválidas";
       return error;
  }

  void _hasUser(context) async {
    final profile = await Storage.load(KEY_PROFILE);
    if(profile != null ){
      if(json.decode(profile)['email'] == _email && json.decode(profile)['password'] ==_password){
        _setToken(context);
        return;
      }
    }
      error = "usuário não encontrado";
      showError.value = true;
  }

  void _setToken(context) async {
    showLoad.value = true;
    Storage.save(KEY_LOGGED, "LOGGED");
    Future.delayed(Duration(seconds: 3));
    goTo(context, home: true);
  }
}
