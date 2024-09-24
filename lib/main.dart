import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shopping/core/utilies/ApiService.dart';
import 'package:shoes_shopping/features/Home/presentation/views/HomeViewBody.dart';
import 'SimpleBlocObserver.dart';
import 'features/Home/data/repos/HomeRepoImp.dart';
import 'features/Home/presentation/manager/ProductCubit.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => ProductCubit(HomeRepoImpl(ApiService())),
        child: HomeViewBody(),
      ),
    );
  }
}
