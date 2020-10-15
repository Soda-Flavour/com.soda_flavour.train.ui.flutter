import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/circle_indicator.comp.dart';

class TeacherDetailAdCardComp extends StatefulWidget {
  const TeacherDetailAdCardComp({Key key}) : super(key: key);

  @override
  _TeacherDetailAdCardCompState createState() =>
      _TeacherDetailAdCardCompState();
}

class _TeacherDetailAdCardCompState extends State<TeacherDetailAdCardComp> {
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
      height: 300,
      child: Stack(
        children: [
          ClipRRect(
            key: PageStorageKey<String>("teacher_detail_add_card"),
            borderRadius: BorderRadius.circular(10),
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  currentPage = page;
                });
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Image.asset(
                  'assets/images/ad${index + 1}.png',
                  fit: BoxFit.cover,
                );
              },
              itemCount: 4,
            ),
          ),
          Positioned(
            top: 20.0,
            right: 20.0,
            child: CircleIndicator(
              count: 4,
              current: currentPage,
            ),
          ),
        ],
      ),
    );
  }
}
