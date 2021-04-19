import 'package:flutter/material.dart';
import '../../../../core/core.dart';

import '../../../../ui/organism/organism.dart';

import '../../../../ui/validators/validators.dart';

import '../../../../ui/organism/mixins/mixins.dart';

class RegisterController  with NavigatorManager, KeyboardManager  implements Controller{
  final enabledButtonNotifer = ValueNotifier<bool>(false);
  final showLoad = ValueNotifier<bool>(false);
  final showError = ValueNotifier<bool>(false);

  bool get enabledButton => enabledButtonNotifer.value;

  set enabledButton(bool value) => enabledButtonNotifer.value = value;

  bool get isShowLoad => showLoad.value;

  bool get isError => showError.value;


  String _email;
  String _password;

  void setValueEmail(String value) {
    _email = value;
    _enabladButtton();
  }

  void setValuePassword(String value) {
    _password = value;
    _enabladButtton();
  }

  void onValidate(context) {
    closeKeyboard(context);
    if (FormsValidators.email(_email) == null &&
        FormsValidators.password(_password) == null) {
      showLoad.value = true;
      dispose();
    } else {
      showError.value = true;
    }
  }

  void goTo(BuildContext context, {bool home = false}) {
    redirect(context, home ? Pages.HOME : Pages.REGISTER);
  }

  void closeKeyboard(context) {
    hideKeyboard(context);
  }

  void _enabladButtton() {
    if (_email != null && _password != null) {
    if (FormsValidators.email(_email) != null &&
        FormsValidators.password(_password) != null) {
    enabledButtonNotifer.value = (_email.isNotEmpty && _password.isNotEmpty);
    }
    }


    }

  void backNormal() {
    showError.value = false;
  }

  void dispose() {
    showError.dispose();
    enabledButtonNotifer.dispose();
    showLoad.dispose();
  }
}
