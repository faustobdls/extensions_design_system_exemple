import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wallace/app/modules/home/home_controller.dart';
import 'package:wallace/app/shared/shared_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("NOW".i18n(lang: "pt-br")).h3(
                    style: TextStyle(
                      fontSize: 60,
                      color: ColorsTheme.danger,
                    ),
                  ),



                  // Text("NOW".i18n(lang: "pt-br")).h3(
                  //   style: TextStyle(
                  //     fontSize: 60,
                  //     color: Colors.pinkAccent,
                  //   ),
                  // ),
                  // Text("NOW".i18n(lang: "en-us")).h3(
                  //   style: TextStyle(
                  //     fontSize: 60,
                  //     color: Colors.pinkAccent,
                  //   ),
                  // ),
                  // Text("NOW".i18n(lang: "es-mx")).h3(
                  //   style: TextStyle(
                  //     fontSize: 60,
                  //     color: Colors.pinkAccent,
                  //   ),
                  // ),
                  // Text("I'm a standard h1 title").h1(),
                  // Text("I'm a pink and size 40 h1 title").h1(
                  //   style: TextStyle(
                  //     fontSize: 40,
                  //     color: Colors.red,
                  //   ),
                  // ),




                  // Text("H1").h1(),
                  // Text("H2").h2(),
                  // Text("H3").h3(),
                  // Text("H4").h4(),
                  // Text("H5").h5(),
                  // Text("H6").h6(),
                  // Text("H7").h7(),




                  FlatButton(
                    onPressed: () async {
                      await Modular.to.showDialogAdaptative(
                        title: "Aqui eu tenho um titulo",
                        content: "Um conteudo",
                        actions: <Widget>[
                          FlatButton(
                            child: Text("OK"),
                            onPressed: Modular.to.pop,
                          ),
                        ],
                      );
                    },
                    child: Text("ME APERTE").h3(),
                  ),




                ],
              ),
            ]),
      ),
    );
  }
}
