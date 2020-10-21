import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/circle_indicator.comp.dart';

class TeacherDetailCareerComp extends StatefulWidget {
  const TeacherDetailCareerComp({Key key}) : super(key: key);

  @override
  _TeacherDetailCareerCompState createState() =>
      _TeacherDetailCareerCompState();
}

class _TeacherDetailCareerCompState extends State<TeacherDetailCareerComp> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 30,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "주요 자격 및 경력",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 7.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "*상담 심리사 2급 (한국상담심리학회)\n이화여자대학교 심리 상담 석사 졸업\n상담 경력 다수 심리검사 실시 및 해석, 진로 상담\n이전) 이화여자대학교 학생삼담센터 심릭검사/개인상담\n이전)바른스피치 면접진로 컨설팅 심리검사/진로상담/개인상담\n이전)대치 이강학원 심리검사/진로상담/면접지도",
              style: TextStyle(
                color: Colors.black,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
