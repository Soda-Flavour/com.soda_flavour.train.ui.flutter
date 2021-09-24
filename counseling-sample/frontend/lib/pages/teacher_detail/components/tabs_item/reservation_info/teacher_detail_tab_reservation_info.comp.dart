import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/reservation_info/teacher_detail_reservation_guide.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/reservation_info/teacher_detail_reservation_step.comp.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/reservation_info/teacher_detail_tab_reservation_title.comp.dart';

class TeacherDetailTabReservationInfoComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        TeacherDetailTabReservationTitleComp(),
        TeacherDetailReservationStepComp(),
        TeacherDetailReservationGuideComp(),
      ],
    );
  }
}
