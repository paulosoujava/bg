import 'package:flutter/material.dart';
import 'package:gb_app/ui/atom/render/ar_space.dart';
import 'package:gb_app/ui/atom/render/ar_text.dart';

import './post.dart';
import '../../../ui/themes/app_theme.dart';

class _ArticleDescription extends StatelessWidget {
  const _ArticleDescription({
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
  });

  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

               Container(
                 height:40,
                  child: ARText.title(title),

              ),
              Container(
                height:75,
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: ARText.subtitle(subtitle),
                  ),
                ),

              Container(
                height:15,
                  child:   ARText.subtitle(author),
                ),

             Container(
               height:13,
                  child: ARText.subtitle('$publishDate - $readDuration'),

              ),
      ],

        ),
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  const CustomListItemTwo({
    this.thumbnail,
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
  });

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shadowColor: Colors.black,
        color: makeAppTheme().primaryColor,
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: SizedBox(
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: thumbnail,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 2.0, 0.0),
                    child: _ArticleDescription(
                      title: title,
                      subtitle: subtitle,
                      author: author,
                      publishDate: publishDate,
                      readDuration: readDuration,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );



  }
}

class Home extends StatelessWidget with Post {
  const Home();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.lightGreenAccent,
                onPressed: () {},
                child: Icon(
                  Icons.info,
                  color: Colors.lightBlue,
                ),
              ),
              SizedBox(height: 10,),
              FloatingActionButton(
                onPressed:()=>showMyDialog(context),
                child: Icon(Icons.chat_bubble_outline_outlined),
              )
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(4.0),
          children: <Widget>[
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.pink),
              ),
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons. '
                  'This text should max out at two lines and clip',
              author: 'Dash',
              publishDate: 'Dec 28',
              readDuration: '5 mins',
            ),
            CustomListItemTwo(
              thumbnail: Container(
                decoration: const BoxDecoration(color: Colors.blue),
              ),
              title: 'Flutter 1.2 Release - Continual updates to the framework',
              subtitle: 'Flutter once again improves and makes updates.',
              author: 'Flutter',
              publishDate: 'Feb 26',
              readDuration: '12 mins',
            ),
          ],
        ),
      ),
    );
  }
}
