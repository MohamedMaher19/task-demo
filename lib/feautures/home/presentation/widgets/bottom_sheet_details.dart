import 'package:flutter/material.dart';

class BottomSheetCont extends StatelessWidget {

   BottomSheetCont({Key? key, required this.image, required this.text, required this.subText}) : super(key: key);
  final String image;
  final String text;
  final String subText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: GestureDetector(
        onTap: (){
          print('pressed');
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                width: 1.0,
                style: BorderStyle.solid,
              ),
            borderRadius: BorderRadius.circular(12)
          ),
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Image.asset(image , fit: BoxFit.cover,),
                SizedBox(width: 15,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text),
                      SizedBox(height: 10,),
                      Text(subText),
                    ],
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
