import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vanzee/API/api.dart';
import 'package:vanzee/Screens/Components/customButton.dart';
import 'package:vanzee/Screens/Components/customTextField.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Timer? _timer;
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color.fromRGBO(241, 229, 225, 0.3),
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
                    const Padding(padding: EdgeInsets.only(bottom: 10)),

                    CustomTextField(
                      controller: _email,
                      hintText: 'Email',
                    ),

                    CustomTextField(
                      controller: _password,
                      isPassword: true,
                      hintText: 'Password',
                    ),
                    //  Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Padding(
                    //       padding: const EdgeInsets.fromLTRB(0,10,0,20),
                    //       child: InkWell(
                    //         onTap: () {
                    //           Navigator.of(context).pushNamed('/forgotPassword');
                    //         },
                    //         child: const Text(
                    //           'Forgot Password?',
                    //           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    //         ),
                    //       )),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: CustomButton(
                        title: 'Sign In',
                        onPress: () async {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await EasyLoading.show(
                            status: 'loading...',
                            maskType: EasyLoadingMaskType.black,
                          );
                          var response =
                              await API().login(_email.text, _password.text);
                          if (response['status'] == true) {
                            prefs.setBool('isLoggedIn', true);
                            prefs.setString('token', response['token']);
                            prefs.setInt('id', response['user']['id']);
                            _timer?.cancel();
                            await EasyLoading.showSuccess(response['message']);
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            _timer?.cancel();
                            await EasyLoading.showError(response['message']);
                          }
                        },
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/signup');
                          },
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Don\'t have account yet? ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'Sign Up',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
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
