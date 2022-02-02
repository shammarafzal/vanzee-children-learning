import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vanzee/Screens/Components/customButton.dart';
import 'package:vanzee/Screens/Components/customTextField.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  Timer? _timer;
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(241,229,225, 0.3),
        elevation: 0,
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(235,159,73, 1),),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: Text('back to login', style: TextStyle(color: Colors.black,fontSize: 14),),
        centerTitle: false,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color.fromRGBO(241,229,225, 0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: SizeConfig.screenHeight * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Assets/child.png',
                      width: 100,
                      height: 100,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),

                    CustomTextField(
                      controller: _email,
                      hintText: 'Email',
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: CustomButton(
                        title: 'Send Email',
                        onPress: () async {
                          try {
                            // await EasyLoading.show(
                            //   status: 'loading...',
                            //   maskType: EasyLoadingMaskType.black,
                            // );
                            // var response = await API().register(
                            //     _name.text,
                            //     _email.text,
                            //     _password.text,
                            //     _passwordConfirm.text);
                            //
                            // if (response['status'] == false) {
                            //   _timer?.cancel();
                            //   await EasyLoading.showError(
                            //       response['message']);
                            // } else {
                            //   _timer?.cancel();
                            //   await EasyLoading.showSuccess(
                            //       response['message']);
                            //   Navigator.of(context).pushReplacementNamed(
                            //       '/verify_code',
                            //       arguments: {'token': _email.text});
                            // }
                          }
                          catch(e){
                            _timer?.cancel();
                            await EasyLoading.showError(
                                'Something Went Wrong');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'Assets/dino1.png',
              width: SizeConfig.screenWidth * 1,
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
