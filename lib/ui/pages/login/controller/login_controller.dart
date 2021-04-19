import 'package:flutter/material.dart';

import '../../../../core/core.dart';

import '../../../../ui/organism/organism.dart';

import '../../../../ui/validators/validators.dart';

import '../../../../ui/organism/mixins/mixins.dart';

class LoginController  with NavigatorManager, KeyboardManager  implements Controller {
  final enabledButtonNotifer = ValueNotifier<bool>(false);
  final showLoad = ValueNotifier<bool>(false);
  final showError = ValueNotifier<bool>(false);

  bool get enabledButton => enabledButtonNotifer.value;

  set enabledButton(bool value) => enabledButtonNotifer.value = value;

  bool get isShowLoad => showLoad.value;

  bool get isError => showError.value;

  String _email;
  String _password;

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

  void _enabledButton() {
    if (_email != null && _password != null) {
      if (FormsValidators.email(_email) != null &&
          FormsValidators.password(_password) != null) {
        enabledButtonNotifer.value =
            (_email.isNotEmpty && _password.isNotEmpty);
      }
    }
  }

  void backNormal() {
    showError.value = false;
  }

  @override
  void dispose() {
    showError.dispose();
    enabledButtonNotifer.dispose();
    showLoad.dispose();
  }

  @override
  void setValue(String value, Types type) {
    switch (type) {
      case Types.EMAIL:
        _email = value;
        break;
      case Types.PASSWORD:
        _email = value;
        break;
    }
    if (_email != null && _password != null) {
      _enabledButton();
      //SE DEU CERTO CHAMA O DISPOSED
      dispose();
    }
  }
}
