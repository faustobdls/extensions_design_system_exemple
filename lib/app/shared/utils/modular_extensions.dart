import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

extension ModularNavigatorExtension on IModularNavigator {
  Future<dynamic> showDialogAdaptative(
      {String title,
      String content,
      List<Widget> actions}) {
    var titleDialog = Text(
      title ?? "",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
    var contentDialog = Text(
      content ?? "",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
    );

    return this.showDialog(
      builder: (_) {
        return (Platform.isIOS)
            ? CupertinoAlertDialog(
                title: titleDialog,
                content: contentDialog,
                actions: actions,
              )
            : AlertDialog(
                title: titleDialog,
                content: contentDialog,
                actions: actions,
              );
      },
    );
  }

  Future<dynamic> showLoadingDialog(Duration duration){
      return this.showDialog(
        builder: (_) {
          Future.delayed(duration ?? Duration(milliseconds: 1500)).then(Modular.to.pop);
          return (Platform.isIOS)
              ? CupertinoAlertDialog(
                  content: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : AlertDialog(
                  content: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
        },
      );
    
  }
}
