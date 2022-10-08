import 'package:flutter/material.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/colors_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/routes.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../core/utils/custom_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              ImageAssets.welcome,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset(
                  ImageAssets.logo,
                  scale: 1.3,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                TextUtils(
                    text: AppStrings.textWelcome1,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.5)),
                SizedBox(height: 200,),
                CustomButton(
                  text: AppStrings.getStart,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.onboardingPage);
                  },
                  width: 300,
                  height: 55,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextUtils(
                      text: AppStrings.textWelcome2,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeight.normal,
                      color: ColorManager.sBlack),
                  GestureDetector(
                    onTap: () {},
                    child:  Text(
                      AppStrings.signUp,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.buttoColor,
                        fontSize: FontSize.s12,
                      ),
                    ),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.language)),
                    TextUtils(
                        text: AppStrings.english,
                        fontSize: FontSize.s11,
                        fontWeight: FontWeight.normal,
                        color: ColorManager.sBlack)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

