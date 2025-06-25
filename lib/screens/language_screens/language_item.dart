import 'package:flutter/cupertino.dart';
import 'package:social_ui/bottom_bar/models/language_model.dart';

class LanguageItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return
     ListView.separated(
       separatorBuilder: (context, index) => SizedBox(height: 20,),
       itemCount: languageData.length,
       itemBuilder: (context, index){
         final language = languageData[index];
       return Row(
         children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(20),
             child: Image.asset(language.imagePath, width: 48, height: 48,) ,
           ),
           SizedBox(width: 10),
           Expanded(child: Text(language.nation, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)),

           Image.asset("assets/images/tick_icon.png", width: 18, height: 18,)

         ],
       );
     });
  }

}