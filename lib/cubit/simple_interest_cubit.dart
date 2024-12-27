import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubit extends Cubit<double> {
  SimpleInterestCubit() : super(0.0);

  // Method to calculate simple interest
  void calculateSimpleInterest(double principal, double rate, double time) {
    final interest = (principal * rate * time) / 100;
    emit(interest);
  }
}
