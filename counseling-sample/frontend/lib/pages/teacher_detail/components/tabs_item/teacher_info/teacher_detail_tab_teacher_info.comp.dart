import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/teacher_info/teacher_detail_Info.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/teacher_info/teacher_detail_career.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/teacher_info/teacher_detail_you_tube_player.comp.dart';

class TeacherDetailTabTeacherInfoComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        TeacherDetailYouTubePlayerComp(),
        TeacherDetailInfoComp(),
        TeacherDetailCareerComp(),
      ],
    );
  }
}
