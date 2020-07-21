import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tennist_flutter/src/constants/Sex.dart';
import 'package:tennist_flutter/src/provider/LoadingProvider.dart';

class BasicInfoFormScreen extends StatefulWidget {
  static const String routeName = '/BasicInfoForm';
  @override
  _BasicInfoFormScreenState createState() => _BasicInfoFormScreenState();
}

class _BasicInfoFormScreenState extends State<BasicInfoFormScreen> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final loadingProv = Provider.of<LoadingProvider>(context, listen: false);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          alignment: FractionalOffset.centerRight,
          child: AppBar(
            automaticallyImplyLeading: true, //왼쪽 화살표 뒤로 없애기
            backgroundColor: const Color(0xff141414),
            title: Text(
              '기본정보',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                letterSpacing: 0.07,
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          FormBuilder(
            key: _fbKey,
            initialValue: {
              'date': DateTime.now(),
              'accept_terms': false,
            },
            autovalidate: false,
            child: Column(
              children: <Widget>[
                FormBuilderTextField(
                  attribute: "닉네임",
                  decoration: InputDecoration(labelText: "닉네임"),
                  validators: [
                    FormBuilderValidators.numeric(),
                    FormBuilderValidators.max(70),
                  ],
                ),
                FormBuilderTextField(
                  attribute: "나이",
                  decoration: InputDecoration(labelText: "나이"),
                  validators: [
                    FormBuilderValidators.numeric(),
                    FormBuilderValidators.max(70),
                  ],
                ),
                FormBuilderDropdown(
                  attribute: "sex",
                  decoration: InputDecoration(labelText: "성별"),
                  // initialValue: 'Male',
                  hint: Text('선택해주세요.'),
                  validators: [FormBuilderValidators.required()],
                  items: Sex.keys
                      .map((val) => DropdownMenuItem(
                          value: val, child: Text("${Sex[val]}")))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: RaisedButton(
          onPressed: () async {
            loadingProv.setIsLoading();
            // bool isSubmit = await submit(context);
            loadingProv.setEndLoading();
          },
          color: const Color(0xff141414),
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(0),
          ),
          child: Text('저장'),
        ),
      ),
    );
  }
}
