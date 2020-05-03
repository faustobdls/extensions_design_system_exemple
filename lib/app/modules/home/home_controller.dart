import 'dart:async';

import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  // static List<String> langs = []..add("pt-br")..add("en-us")..add("es-mx");

  // Timer _timer = Timer.periodic(const Duration(seconds: 1), _next);

  // @observable
  // String value = langs.first;

  // static String _next(_){
  //   var atualPos = langs.indexWhere( (v) { 
  //     return v == value;
  //   });
  //   print(langs.length);
  //   return "";
  // }

  // @action
  // next(){
  //   change(_next(null));
  // }

  // @action
  // void change(String newValue) {
  //   value = newValue;
  // }
}
