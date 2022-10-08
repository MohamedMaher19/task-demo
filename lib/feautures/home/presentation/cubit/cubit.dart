import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/feautures/home/presentation/cubit/states.dart';
import 'package:task/feautures/home/presentation/pages/wallet_page.dart';
import '../pages/favorites_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';


class SocialCubit extends Cubit<SocialStates> {
  SocialCubit() : super(SocialInitialStates());

  static SocialCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;

  List<Widget> screens = [
     HomePage(),
    const FavortesPage(),
    const WalletPage(),
    const ProfilePage(),
  ];
  List<String> label = [
    'Home',
    'Chat',
    'User',
    'Profile',
  ];

  void changeNavbarBottom({required int index}) {
    currentIndex = index;
    emit(ChangeNavbarBottomStates());
  }
}