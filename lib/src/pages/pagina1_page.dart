import 'package:animate_do_app/src/pages/navegation_page.dart';
import 'package:animate_do_app/src/pages/twitter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Font Awesome
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//Animate_do
import 'package:animate_do/animate_do.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: FadeInRight(child: Text("Animate_do")),
          actions: [
            Dance(
              delay: Duration(milliseconds: 500),
              child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => TwitterPage(),
                        ));
                  }),
            ),
            JelloIn(
              delay: Duration(milliseconds: 500),
              child: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (BuildContext context) => Pagina1Page(),
                        ));
                  }),
            )
          ],
        ),
        //FloatingActionButton
        floatingActionButton: FadeInUp(
          child: FloatingActionButton(
            child: FaIcon(FontAwesomeIcons.play, size: 20),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => NavegacionPage(),
                  ));
            },
          ),
        ),
        //BODY
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon
              ElasticIn(
                  delay: Duration(milliseconds: 1000),
                  child:
                      Icon(Icons.new_releases, color: Colors.blue, size: 40)),

              //
              FadeInDown(
                delay: Duration(milliseconds: 500),
                child: Text("Titulo",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w200)),
              ),
              //
              FadeInDown(
                duration: Duration(milliseconds: 800),
                child: Text("Soy un texto pequeño",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w200)),
              ),

              //Linea
              FadeInLeft(
                  child: Container(width: 220, height: 2, color: Colors.blue))
            ],
          ),
        ));
  }
}
