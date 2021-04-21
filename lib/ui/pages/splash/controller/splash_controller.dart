import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gb_app/model/profile.dart';
import 'package:gb_app/storage/storage.dart';
import '../../../../core/core.dart';

import '../../../../ui/organism/organism.dart';

import '../../../../ui/validators/validators.dart';

import '../../../../ui/organism/mixins/mixins.dart';

class RegisterController
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
  String _repPassword;
  String _name;

  String error;

  @override
  void setValue(String value, Types type) {
    switch (type) {
      case Types.NAME:
        _name = value;
        break;
      case Types.EMAIL:
        _email = value;
        break;
      case Types.PASSWORD:
        _password = value;
        break;
      case Types.REPASSWORD:
        _repPassword = value;
        break;
    }
    showButton.value =
        (_email != null && _password != null && _repPassword != null && _name != null);
  }

  void validate(context) async {
    if (_showErrors().isNotEmpty) {
      closeKeyboard(context);
      showError.value = true;
    } else {
      closeKeyboard(context);
      showLoad.value = true;

      _saveProfile();
      await Future.delayed(Duration(seconds: 3));
      goTo(context, home: true);
    }
  }

  void goTo(BuildContext context, {bool home = false}) {
    redirect(context, home ? Pages.HOME : Pages.LOGIN, replace: home);
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
    e = e.isNotEmpty ? "$e\n" : "";
    String e1 = FormsValidators.password(_password);
    e1 = e1.isNotEmpty ? "$e1\n" : "";
    String e2 = FormsValidators.repPassword(_password, _repPassword);
    e2 = e2.isNotEmpty ? "$e2\n" : "";
    String e3 = FormsValidators.name(_name);
    e3 = e3.isNotEmpty ? "$e3\n" : "";
    error = (e.isEmpty && e1.isEmpty && e2.isEmpty && e3.isEmpty) ? "" : "$e $e1 $e2 $e3";
    return error;
  }

  void _saveProfile() {
    Profile p = Profile(
      name: _name,
      email: _email,
      password: _password
    );
    Storage.save(KEY_PROFILE, json.encode(p));
  }
}
