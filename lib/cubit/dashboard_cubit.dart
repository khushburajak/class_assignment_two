import 'package:class_assignment_two/cubit/arithmetic_cubit.dart';
import 'package:class_assignment_two/cubit/circle_cubit.dart';
import 'package:class_assignment_two/cubit/simple_interest_cubit.dart';
import 'package:class_assignment_two/view/area_circle.dart';
import 'package:class_assignment_two/view/arithmetic_cubit_view.dart';
import 'package:class_assignment_two/view/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  // DashboardCubit() : super(null);
  DashboardCubit(
    this._areacircleCubit,
    this._arithmenticCubit,
    this._simpleinterestCubit,
  ) : super(null);

  final AreaOfCircleCubit _areacircleCubit;
  final ArithmenticCubit _arithmenticCubit;
  final SimpleInterestCubit _simpleinterestCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AreaOfCircleView(),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ArithmeticCubicView(),
      ),
    );
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SimpleInterestView(),
      ),
    );
  }
}
