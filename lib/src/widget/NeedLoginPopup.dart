import 'package:flutter/material.dart';
import 'package:tennist_flutter/pages/account/LogIn.screen.dart';

class NeedLoginPopup {
  void showNeedLoginDialogBox(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("함께해요!"),
          content: new Text("회원가입 또는 로그인 후\n 이용할 수 있습니다."),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("취소"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("로그인/회원가입"),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(LogInScreen.routeName);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
