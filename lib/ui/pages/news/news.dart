import 'package:flutter/material.dart';

import '../../../ui/ui.dart';
import './controller/news_controller.dart';

class News extends StatefulWidget {
  const News();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<News> {
  final _controller = NewsController();

  @override
  Widget build(BuildContext context) {
    _controller.fetch();

    return SafeArea(
      child: Scaffold(
        floatingActionButton:  MRButton.backFLoat(()=>_controller.goBack(context)),
         body: ValueListenableBuilder<bool>(
          valueListenable: _controller.showLoad,
          builder: (_, enabled, __) => enabled
              ? MRLoad.load(context)
              : ListView.builder(
                  itemCount: _controller.gb == null  ||  _controller.gb.news == null? 0 :_controller.gb.news.length,
                  itemBuilder: (context, index) {
                    return OCard(
                      name: _controller.gb.news[index].user.name,
                      content: _controller.gb.news[index].message.content,
                      profilePicture:
                          _controller.gb.news[index].user.profilePicture,
                      createdAt: _controller.gb.news[index].message.createdAt,
                    );
                  },
                ),
        ),
      ),
    );
  }
}
