

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/main.dart';

import 'package:firebase_demo/uihelper.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  signup(String email,String password)async{
if (email==""&&password==""){
  UiHelper.CustomAlertBox(context, "Enter required field");
}
else {



}



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up Page"
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField(TextEditingController, emailController, "Email", Icons.mail, false),
          const SizedBox(height: 15,),
          UiHelper.CustomTextField(TextEditingController, passwordController, "password", Icons.password, true),
          const SizedBox(height: 20,),
          UiHelper.CustomButton(() {
            signup(emailController.text.toString(), passwordController.text.toString());
          }, "Sign Up",),
        ],
      ),
    );
  }
}
