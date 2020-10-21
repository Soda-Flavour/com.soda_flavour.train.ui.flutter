import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/review/teacher_detail_tab_review_item.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/review/teacher_detail_tab_review_title.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/review/teacher_detail_tab_review_total_data.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/teacher_info/teacher_detail_Info.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/teacher_info/teacher_detail_career.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/teacher_info/teacher_detail_you_tube_player.comp.dart';

class TeacherDetailTabReviewComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        TeacherDetailTabReviewTitleComp(),
        TeacherDetailTabReviewTotalDataComp(),
        TeacherDetailTabReviewItemComp(),
        TeacherDetailTabReviewItemComp(),
        TeacherDetailTabReviewItemComp(),
        TeacherDetailTabReviewItemComp(),
        TeacherDetailTabReviewItemComp(),
        TeacherDetailTabReviewItemComp(),
        TeacherDetailTabReviewItemComp(),
        TeacherDetailTabReviewItemComp(),
      ],
    );
  }
}
