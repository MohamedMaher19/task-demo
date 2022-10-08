import 'package:flutter/material.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/colors_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/utils/custom_text.dart';
import '../widgets/bottom_sheet_details.dart';
import '../widgets/expert_card_item.dart';
import '../widgets/online_list_view.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  List<ExpertCardItem> items = [
    ExpertCardItem(image: ImageAssets.doctor, title: AppStrings.doctorName, subTitlle: AppStrings.doctorDescrt, rate: AppStrings.rate),
    ExpertCardItem(image: ImageAssets.nurse, title: AppStrings.nurseName, subTitlle: AppStrings.nurseDescrt, rate: AppStrings.rate),
    ExpertCardItem(image: ImageAssets.doctor, title: AppStrings.doctorName, subTitlle: AppStrings.doctorDescrt, rate: AppStrings.rate),
    ExpertCardItem(image: ImageAssets.nurse, title: AppStrings.nurseName, subTitlle: AppStrings.nurseDescrt, rate: AppStrings.rate),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextUtils(text: AppStrings.recommendedExperts, fontSize: FontSize.s15, fontWeight: FontWeight.normal, color: Colors.black,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
               ],
              ),
            ),
            SizedBox(
              height: 270,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: Card(
                      elevation: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Image.asset(ImageAssets.doctor , fit: BoxFit.cover,),
                          Padding(
                            padding: const EdgeInsets.all(AppPadding.p8),
                            child: Row(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.star , color: Colors.yellow,),
                                    SizedBox(width: 5,),
                                    Text(AppStrings.rate),
                                  ],
                                ),
                                const SizedBox(width: 80,),

                                const Icon(Icons.favorite , color: Colors.grey,),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: AppPadding.p8),
                            child: Text(AppStrings.doctorName),
                          ),
                          const SizedBox(height: 10,),
                          const Padding(
                            padding: EdgeInsets.only(left: AppPadding.p8),
                            child: Text(AppStrings.doctorDescrt, style: TextStyle(
                                color: Colors.grey
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: Card(
                      elevation: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Image.asset(ImageAssets.nurse , fit: BoxFit.cover,),
                          Padding(
                            padding: const EdgeInsets.all(AppPadding.p8),
                            child: Row(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.star , color: Colors.yellow,),
                                    SizedBox(width: 5,),
                                    Text(AppStrings.rate),
                                  ],
                                ),
                                const SizedBox(width: 80,),

                                const Icon(Icons.favorite , color: Colors.grey,),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: AppPadding.p8),
                            child: Text(AppStrings.nurseName),
                          ),
                          const SizedBox(height: 10,),
                          const Padding(
                            padding: EdgeInsets.only(left:AppPadding.p8),
                            child: Text(AppStrings.nurseDescrt , style: TextStyle(
                              color: Colors.grey
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                  ),
              ),

            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextUtils(text: AppStrings.onlineExperts, fontSize: FontSize.s16, fontWeight: FontWeight.normal, color: Colors.black,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
                ],
              ),
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 130,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index) => const OnlineExperts(),
                  separatorBuilder: (context , index) => const SizedBox(width:1,),
                  itemCount: 6),
            ),
            const Spacer(),
            Center(
              child: InkWell(
                onTap: (){
                  showModalBottomSheet(
                    enableDrag: true,
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)
                        )
                      ),
                      builder:(context)=>
                          Container(
                        child:SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              BottomSheetCont(
                                image:ImageAssets.img1 ,
                                text:AppStrings.InformationTechnology,
                                subText:AppStrings.Experts23,

                              ),
                              BottomSheetCont(
                                image:ImageAssets.img2 ,
                                text:AppStrings.SupplyChain,
                                subText:AppStrings.Experts12 ,

                              ),
                              BottomSheetCont(
                                image:ImageAssets.img3 ,
                                text:AppStrings.Securty,
                                subText:AppStrings.Experts14,

                              ),
                              BottomSheetCont(
                                image:ImageAssets.img4 ,
                                text:AppStrings.HumanResources,
                                subText:AppStrings.Experts8 ,

                              ),
                              BottomSheetCont(
                                image:ImageAssets.img5 ,
                                text:AppStrings.Immigiration,
                                subText:AppStrings.Experts18,

                              ),
                              BottomSheetCont(
                                image:ImageAssets.img6 ,
                                text:AppStrings.Translation,
                                subText:AppStrings.Experts3 ,

                              ),
                            ],
                          ),
                        ) ,
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.sheet,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  width: 50,
                  height: 9,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}
