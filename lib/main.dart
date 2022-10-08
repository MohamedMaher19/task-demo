import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/feautures/home/presentation/cubit/states.dart';

import 'core/resources/routes.dart';
import 'core/themes/theme.dart';
import 'feautures/home/presentation/cubit/cubit.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SocialCubit>(
      create: (BuildContext context) => SocialCubit(),
      child: BlocConsumer<SocialCubit, SocialStates>(
        listener: (context, states) {},
        builder: (context, states) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Moon Store',
              theme: themeLite,
              darkTheme: themeDark,
              themeMode: ThemeMode.light,
              routes: Routes.routes,
              initialRoute: Routes.welcomePage
          );
        },),);
  }
}
