import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vanzee/Screens/Components/customButton.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  Timer? _timer;
  final _otp = TextEditingController();
  int pinLength = 4;
  bool hasError = false;
  late String errorMessage;
  @override
  void dispose() {
    _otp.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color.fromRGBO(241,229,225, 0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: SizeConfig.screenHeight * 0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Assets/child.png',
                      width: 100,
                      height: 100,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 20)),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Please enter the 4 digit code that we sent to your email', style: TextStyle(color: Colors.black, fontSize: 18), textAlign: TextAlign.center,),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 20)),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'ammarafzal075@gmail.com', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 20)),
                    PinCodeTextField(
                      autofocus: true,
                      controller: _otp,
                      hideCharacter: false,
                      highlight: true,
                      highlightColor: Colors.grey,
                      defaultBorderColor: Colors.grey,
                      hasTextBorderColor: Colors.grey,
                      highlightPinBoxColor:
                      Color.fromRGBO(246, 247, 249, 1),
                      maxLength: pinLength,
                      hasError: hasError,
                      onTextChanged: (text) {
                        setState(() {
                          hasError = false;
                        });
                      },
                      pinBoxWidth: SizeConfig.screenWidth / 6,
                      pinBoxHeight: 64,
                      wrapAlignment: WrapAlignment.spaceAround,
                      pinBoxDecoration: ProvidedPinBoxDecoration
                          .defaultPinBoxDecoration,
                      pinTextAnimatedSwitcherTransition:
                      ProvidedPinBoxTextAnimation.scalingTransition,
                      pinBoxColor: Color.fromRGBO(246, 247, 249, 1),
                      pinTextAnimatedSwitcherDuration:
                      Duration(milliseconds: 300),
                      keyboardType: TextInputType.number,
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: CustomButton(
                        title: 'Verify OTP',
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
                              Navigator.of(context).pushReplacementNamed(
                                  '/changePassword',
                                  // arguments: {'token': _email.text}
                                  );
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
              'Assets/logo.png',
              width: SizeConfig.screenWidth * 1,
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
