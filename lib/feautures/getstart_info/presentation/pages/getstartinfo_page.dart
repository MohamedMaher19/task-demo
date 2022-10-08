import 'package:flutter/material.dart';
import 'package:task/core/models/user_model.dart';
import 'package:task/core/utils/custom_text.dart';
import '../../../../core/models/chosed_model.dart';
import '../../../../core/resources/colors_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../widgets/chat_composer.dart';
import '../widgets/conversation.dart';

class GetStartPage extends StatefulWidget {
  User? user;

   GetStartPage({super.key,});

  @override
  State<GetStartPage> createState() => _GetStartPageState();


}

class _GetStartPageState extends State<GetStartPage> {

  List<ChosedRadio> chosedRadio = [
    ChosedRadio('Flutter' , false),
    ChosedRadio('FireBase' , false),
    ChosedRadio('Dart' , false),
    ChosedRadio('React' , false),
  ];
  List<ChosedRadio> selected = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                          child: Conversation()),
                      Expanded(
                        flex: 1,
                        child: ListView.builder(
                              itemCount: chosedRadio.length,
                              itemBuilder: (BuildContext context , int index) {
                            return ChosedItem(
                                chosedRadio[index].name , chosedRadio[index].isSelected, index

                            );
                          }),
                      ),
                      const SizedBox(height: 10,),
                      TextUtils(text: AppStrings.finish, fontSize: FontSize.s15, fontWeight: FontWeight.normal, color: Colors.grey)


                    ],
                  ),
                ),

              ),

            ),

            buildChatComposer(context),

          ],
        
        ),
      );

  }
  Widget ChosedItem(
      String name , bool isSelected , int index){
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(
            name
        ),
        leading: isSelected ? Icon(Icons.check_circle , color: ColorManager.buttoColor,) :Icon(Icons.check_circle_outline , color: ColorManager.otherChatBubble,),
        onTap: (){
          setState(() {
            chosedRadio[index].isSelected = !chosedRadio[index].isSelected;
            if(chosedRadio[index].isSelected == true){
              selected.add(ChosedRadio(name ,true));
            }else if (chosedRadio[index].isSelected == false){
              selected.removeWhere((element) => element.name == chosedRadio[index].name);
            }
          });
        },
      ),
    );
  }
}