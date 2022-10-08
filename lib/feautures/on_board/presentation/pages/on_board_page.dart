import 'package:flutter/material.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/colors_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../core/utils/custom_text.dart';
import '../../../getstart_info/presentation/pages/getstartinfo_page.dart';

class OnBoardPage extends StatelessWidget {
   OnBoardPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p15),
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Image.asset(ImageAssets.shape ,fit: BoxFit.cover ),
                  Padding(
                    padding: const EdgeInsets.only(right:AppPadding.p35 , top: AppPadding.p15),
                    child: Image.asset(ImageAssets.text , fit: BoxFit.cover,),
                  ),

                ],
              ),
            ),
          ),
          Image.asset(ImageAssets.robot , fit: BoxFit.cover,scale: 1.3,),
          const SizedBox(height: 15,),

          CustomButton(
            text: AppStrings.next,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartPage()));
            },
            width: 120,
            height: 55,
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
              TextUtils(
                  text: AppStrings.english,
                  fontSize: FontSize.s11,
                  fontWeight: FontWeight.normal,
                  color: ColorManager.sBlack)
            ],
          ),


        ],
      ),
    );
  }
}
