import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/feautures/home/presentation/cubit/cubit.dart';
import 'package:task/feautures/home/presentation/cubit/states.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/icon_brooken.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = SocialCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              elevation: 1,
              title: Image.asset(
                ImageAssets.logo,
                scale: 1.7,
                fit: BoxFit.cover,
              ),
              leading: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Image.asset(ImageAssets.man ,),
              ),
              actions: [
                IconButton(
                  icon: const Icon(IconBroken.Search, color: Colors.black),
                  onPressed: () {},
                ),
              ],
              centerTitle: true,
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Container(
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                  boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3, blurRadius: 10)
              ]),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
                child: BottomNavigationBar(
                  onTap: (index) {
                    cubit.changeNavbarBottom(index: index);
                  },
                  currentIndex: cubit.currentIndex,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(IconBroken.Home), label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(IconBroken.Star), label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(IconBroken.Wallet), label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(IconBroken.Profile), label: ''),
                  ],
                ),
              ),
            ),

          );
        });
  }
}
