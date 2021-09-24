import 'package:flutter/material.dart';

class CounselingDetailButtonComp extends StatelessWidget {
  final Function onTap;
  final String btnText;

  const CounselingDetailButtonComp({Key key, this.onTap, this.btnText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        onPressed: () {
          onTap();
        },
        child: Text(
          btnText,
        ),
        color: Colors.blueAccent,
        textColor: Colors.white,
        // style: TextStyle(
        //   fontWeight: FontWeight.bold,
        //   fontSize: 16.0,
        // ),
      ),
    );
  }
}
