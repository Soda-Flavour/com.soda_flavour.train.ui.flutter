import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/circle_indicator.comp.dart';

class TeacherDetailInfoComp extends StatefulWidget {
  const TeacherDetailInfoComp({Key key}) : super(key: key);

  @override
  _TeacherDetailInfoCompState createState() => _TeacherDetailInfoCompState();
}

class _TeacherDetailInfoCompState extends State<TeacherDetailInfoComp> {
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
            Text(
              "'마음'과 '말하기'의 힘을 믿어요",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "나는 누구일까, 내가 진짜로 원하는 것은 뭘까, 나는왜 이렇게 우 울하고짜증이 나는 걸까... 어둡고 터널을 지나 상담의 세계를 찾아냈어요. 상담을 배우고 상담을 받고 상담사가 되면서 나를 알게 되니 남이 보이고마음과 생각을 말하니 힘이 생겼어요. 그저 마음을 털어놓았을 뿐인데, 미처 깨닫치 못한 감정에 깊이 아 프고 왜곡된 생각들이 보여 마음이 콕콕 찔렸지요. 그리고 더 유연하고 단단해졌어요. 험한 세상, 변한 것은 없지만전 보다 지혜롭게 대처하려 합니다. 상담의 힘을 맛본이들은 저처럼 간중'을 하게 되지요. 여기까지 잘 찾아오셨어요 이제 사람과 사람의 마음이 만나 이루 어내는 공감' 이라는 마법의 힘을 직접 느껴보세요!",
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
