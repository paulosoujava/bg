import 'package:flutter/material.dart';

import 'package:gb_app/mock/dumb.dart';
import '../../../ui/ui.dart';
import 'controller/home_controller.dart';
import './post.dart';

class Home extends StatefulWidget {
  const Home();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with Post {
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    _controller.fetchProfile();

    return TPLDefault(
      children: [
        MRButton.link("Novidades", () {
          _controller.gotTo(context);
        }, w: 90, color: Colors.lightGreenAccent),
        MRButton.link("Sair", () => _controller.gotTo(context, news: false),
            w: 50, color: Colors.white)
      ],
      childrenColumn: Dump.dumpList(),
      welcome: [
        ARText.strong("Bem Vindo!", color: Colors.black87),
        SizedBox(
          height: 10,
        ),
        ValueListenableBuilder<bool>(
          valueListenable: _controller.hasProfile,
          builder: (_, enabled, __) => ARText.subtitle(
              enabled ? _controller.profile.value.name.toUpperCase() : '',
              color: Colors.black87),
        ),
        SizedBox(
          height: 38,
        ),
      ],
      myPosts: ValueListenableBuilder<List<OCardWithoutImage>>(
          valueListenable:_controller.list,
          builder: (_, enabled, __) => enabled.length >0
              ? Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 200.0,
                  width: 500.0,
                  color: makeAppTheme().primaryColorDark,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _controller.list.value.length,
                      itemBuilder: (context, index) {
                        print(index);
                        return GestureDetector(
                          onTap: (){
                            showMyDialog(context, _controller, indice: index);
                            _controller.setEditText(_controller.list.value[index].content);
                          },
                          child: Container(
                            width: 310.0,
                            child:_controller.list.value[index]
                          ),
                        );
                      }),
                )
              : Container()),
      mrButton: MRButton.editFLoat(() => showMyDialog(context, _controller)),
    );
  }
}
