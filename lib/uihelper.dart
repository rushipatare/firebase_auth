import 'package:flutter/material.dart';

class UiHelper{
  static CustomTextField(TextEditingController,controller,String text,IconData iconData,bool ToHight){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(controller: controller,
        obscureText: ToHight,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25)
          )
        )

          ,
      ),
    );

}
static CustomButton(VoidCallback voidCallback,String text){
    return SizedBox(height: 30,width: 300,child:ElevatedButton(onPressed: (){
      voidCallback();
      },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25))), child: Text(text,style: TextStyle(color: Colors.blue,  fontSize: 20),),) ,);


}
static CustomAlertBox(BuildContext context, String text ){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text(text),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("ok"))
        ],
      );
    });
}
  }