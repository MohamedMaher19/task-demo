import 'package:flutter/cupertino.dart';
import 'package:task/feautures/getstart_info/presentation/pages/getstartinfo_page.dart';
import 'package:task/feautures/home/presentation/pages/home_page.dart';
import 'package:task/feautures/on_board/presentation/pages/on_board_page.dart';
import 'package:task/feautures/welcome/presentation/pages/welcome_page.dart';

import '../../feautures/home/presentation/pages/layout_page.dart';

class Routes {
  static const String welcomePage = '/WelcomeOnboarding';
  static const String onboardingPage = '/Onboarding';
  static const String getStartPage = '/GetStart';
  static const String homePage= '/Home';
  static const String layoutPage= '/Layout';

  static Map<String, WidgetBuilder> get routes {
    return {
      welcomePage: (context) => const WelcomePage(),
      onboardingPage: (context) =>  OnBoardPage(),
      getStartPage: (context) =>  GetStartPage(),
      homePage: (context) =>  HomePage(),
      layoutPage: (context) => const LayoutPage(),

    };
  }
}
