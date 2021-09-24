import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/review/teacher_detail_tab_review_item.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/review/teacher_detail_tab_review_title.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/review/teacher_detail_tab_review_total_data.comp.dart';

class TeacherDetailTabReviewComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
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
