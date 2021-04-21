import 'package:flutter/material.dart';
import 'package:gb_app/ui/molecule/molecule.dart';
import 'package:gb_app/ui/organism/organism.dart';

import 'package:gb_app/ui/pages/home/controller/home_controller.dart';

import './post.dart';

class Home extends StatefulWidget with Post {
  const Home();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    _controller.get();

    return SafeArea(
        child: ValueListenableBuilder<bool>(
            valueListenable: _controller.showLoad,
            builder: (_, enabled, __) => enabled
                ? MRLoad.load(context)
                : ListView.builder(
                    itemCount: _controller.gb.news.length ?? 0,
                    itemBuilder: (context, index) {
                      return OCard(
                        name: _controller.gb.news[index].user.name,
                        content: _controller.gb.news[index].message.content,
                        profilePicture: _controller.gb.news[index].user.profilePicture,
                        createdAt: _controller.gb.news[index].message.createdAt,
                      );
                    },
                  )));
  }
}
