import 'package:flutter/material.dart';
import 'package:frontend/pages/counseling_reservation_history/components/counseling_reservation_tab_coming_item.comp.dart';

class CounselingReservationHistoryTabComingConsultationComp
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CounselingReservationTabComingItemComp(),
        CounselingReservationTabComingItemComp(),
        CounselingReservationTabComingItemComp(),
      ],
    );
  }
}
