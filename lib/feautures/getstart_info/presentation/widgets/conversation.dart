import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../core/models/chosed_model.dart';
import '../../../../core/models/messages_model.dart';
import '../../../../core/models/user_model.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/colors_manager.dart';
import '../../../../core/resources/values_manager.dart';

class Conversation extends StatefulWidget {

  const Conversation({super.key,});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        reverse: true,
        itemCount: messages.length,
        itemBuilder: (context, int index) {
          final message = messages[index];
          bool isMe = message.sender.id == currentUser.id;

          return Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                  isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (!isMe)
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Image.asset(ImageAssets.avatar),
                      ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(AppPadding.p10),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.6),
                      decoration: BoxDecoration(
                          color:isMe ? ColorManager.buttoColor : ColorManager.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(16),
                            topRight: const Radius.circular(16),
                            bottomLeft: Radius.circular(isMe ? 12 : 0),
                            bottomRight: Radius.circular(isMe ? 0 : 12),
                          )),
                      child: Text(
                        messages[index].text ,
                          style: isMe? const TextStyle(
                            color: ColorManager.sWhite
                          ) :const TextStyle(
                              color: ColorManager.sBlack
                          ) ,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Icon(
                      isMe ?
                      Icons.done_all : null,
                      size: 20,
                      color: ColorManager.ok,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p5),
                  child: Row(
                    mainAxisAlignment:
                    isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      if (!isMe)
                        const SizedBox(
                          width: 40,
                        ),
                      Icon(
                        isMe ?
                        null : null,
                        size: 20,
                        color: ColorManager.buttoColor,
                      ),


                    ],

                  ),

                ),

              ],
            ),
          );
        });
  }


}