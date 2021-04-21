import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../model/profile.dart';
import '../../../../storage/storage.dart';
import '../../../ui.dart';

class HomeController with NavigatorManager {
  final showLoad = ValueNotifier<bool>(true);
  final hasProfile = ValueNotifier<bool>(false);
  final profile = ValueNotifier<Profile>(null);
  final list = ValueNotifier<List<OCardWithoutImage>>([]);

  TextEditingController postText = TextEditingController();

  void gotTo(context, {bool news = true}) {
    if (!news) {
      Storage.delete(KEY_LOGGED);
      _dispose();
    }
    redirect(context, news ? Pages.NEWS : Pages.LOGIN);
  }

  void fetchProfile() {
    _getDataProfile();
  }

  void clearValue() {
    postText.text = "";
  }

  void postThis() async {
    if (postText.text.isNotEmpty) {
      list.value.add(OCardWithoutImage(
        name: profile.value.name,
        content: postText.text,
        createdAt: DateTime.now().toString(),
        color: Colors.blueAccent,
      ));
      postText.text = "";
      _listener();
    }
  }

  void edit(indice) {
    list.value.removeAt(indice);
    list.value.insert(
        indice,
        OCardWithoutImage(
          name: profile.value.name,
          content: postText.text,
          createdAt: DateTime.now().toString(),
          color: Colors.blueAccent,
        ));
    _listener();
  }

  void delete(indice) {
    clearValue();
    list.value.removeAt(indice);
    _listener();
  }

  void setEditText(String content) {
    postText.text = content;
  }

  void _dispose() {
    showLoad.dispose();
    hasProfile.dispose();
    profile.dispose();
    postText.dispose();
  }

  //*************************
  // PRIVATE METHODS
  //*****
  void _listener() {
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    list.notifyListeners();
  }

  void _getDataProfile() async {
    final p = await Storage.load(KEY_PROFILE);
    hasProfile.value = true;
    profile.value =
        Profile(name: json.decode(p)['name'], email: json.decode(p)['email']);
  }
}
