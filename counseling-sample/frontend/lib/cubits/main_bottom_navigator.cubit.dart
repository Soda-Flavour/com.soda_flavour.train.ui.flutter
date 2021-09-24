import 'package:flutter_bloc/flutter_bloc.dart';

class MainBottomNavigatorCubit extends Cubit<int> {
  MainBottomNavigatorCubit() : super(0);

  void getTeacherListPage() => emit(0);
  void getCounselingListPage() => emit(1);
  void getNotificationPage() => emit(2);
  void getMorePage() => emit(3);
}
