import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sum_two/cubit/arithmetic_cubit.dart';
import 'package:sum_two/cubit/circle_cubit.dart';
import 'package:sum_two/cubit/dashboard_cubit.dart';
import 'package:sum_two/cubit/simple_interest_cubit.dart';
import 'package:sum_two/view/dashboard_cubit_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AreaOfCircleCubit()),
        BlocProvider(create: (context) => ArithmenticCubit()),
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<AreaOfCircleCubit>(),
            context.read<ArithmenticCubit>(),
            context.read<SimpleInterestCubit>(),
          ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter bloc',
        home: DashboardView(),
      ),
    );
  }
}
