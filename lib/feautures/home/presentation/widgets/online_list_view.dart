import 'package:flutter/material.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/colors_manager.dart';

class OnlineExperts extends StatelessWidget {
  const OnlineExperts({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 60,
        child: Column(
          children: [
            Stack(
                alignment: AlignmentDirectional.topEnd,
                children:[
                  const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          ImageAssets.doctor
                      )
                  ),
                  const CircleAvatar(
                    radius: 7,
                    backgroundColor: ColorManager.sWhite,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0 , right: 1.0),
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: ColorManager.active,
                    ),
                  ),
                ]),
            const SizedBox(height: 9,),
            const Text('Lance' , maxLines: 2,overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );

  }
}
