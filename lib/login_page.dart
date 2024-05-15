
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/SignUp_Page.dart';
import 'package:firebase_demo/main.dart';
import 'package:firebase_demo/uihelper.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
   const loginpage({super.key});


   @override
   State<loginpage> createState() => _loginpageState();
 }

 class _loginpageState extends State<loginpage> {
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(title: const Text("Login-page"),
         centerTitle: true,
       ),
       body: Column(mainAxisAlignment: MainAxisAlignment.center,
         children: [
           UiHelper.CustomTextField(TextEditingController, emailController, "Email", Icons.mail, false),
           const SizedBox(height: 25,),
           UiHelper.CustomTextField(TextEditingController, passwordController, "Password", Icons.password, true),
           const SizedBox(height:25,),
           UiHelper.CustomButton(() {

           }, "login"),
           const SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPage()));},
                   child: const Text("Sign Up")),

             const Text("Already Have An Account ??",style: TextStyle(fontSize: 16),),
             TextButton(onPressed: (){}, child:const Text ("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),))
           ],)


         ],

       ),
     );
   }
 }
