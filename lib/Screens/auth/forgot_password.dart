import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/app_colors.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final email = TextEditingController();

  Future forgotPassword() async {
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
      await EasyLoading.showSuccess(
          "Check your email");
      Navigator.of(context)
          .pushReplacementNamed('/login');
    } on FirebaseAuthException catch(e){
      _handleForgotError(e);
    }
  }
  void _handleForgotError(FirebaseAuthException e) async{
    String message;
    switch (e.code){
      case 'auth/invalid-email':
        message = 'This email is invalid';
        break;
      case 'auth/missing-android-pkg-name':
        message = 'Missing Android Pkg Name';
        break;
      case 'auth/missing-continue-uri':
        message = 'Missing Continue Uri';
        break;
      case 'auth/missing-ios-bundle-id':
        message = 'Missing iOS Bundle Id';
        break;
      case 'auth/invalid-continue-uri':
        message = 'Invalid Continue Uri';
        break;
      case 'auth/unauthorized-continue-uri':
        message = 'Unauthorized Continue Uri';
        break;
      case 'auth/user-not-found':
        message = 'User Not Found';
        break;
      default:
        message = 'An unknown error occured';
        break;
    }
    await EasyLoading.showError(message);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context)
                          .pushReplacementNamed('/login');
                    },
                    child: const Icon(Icons.arrow_back_ios)),
                const SizedBox(height: 20,),
                Text('Reset Password', style: GoogleFonts.bebasNeue(fontSize: 24),),
                const SizedBox(height: 10,),

                const Text('Enter the email associated with your account and we\'ll send an email with instructions to reset your password.', style: TextStyle(),),
                const SizedBox(height: 50,),
                Text('Email Address', style: GoogleFonts.bebasNeue(fontSize: 20),),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: textFieldColor,
                      border: Border.all(color: borderColor),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: email,
                      cursorColor: btnColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email'
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: (){
                    forgotPassword();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: btnColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                        child: Text(
                          'Send Instructions',
                          style: TextStyle(
                              color: btnTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}