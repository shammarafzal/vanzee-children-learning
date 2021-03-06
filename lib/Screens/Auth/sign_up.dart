import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vanzee/API/api.dart';
import 'package:vanzee/Screens/Components/customButton.dart';
import 'package:vanzee/Screens/Components/customTextField.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Timer? _timer;
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _age = TextEditingController();

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
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Assets/child.png',
                      width: 100,
                      height: 100,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    CustomTextField(
                      controller: _name,
                      hintText: 'Full Name',
                    ),
                    CustomTextField(
                      controller: _email,
                      hintText: 'Email',
                    ),
                    CustomTextField(
                      controller: _password,
                      isPassword: true,
                      hintText: 'Password',
                    ),
                    CustomTextField(
                      controller: _age,
                      hintText: 'Age',
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: CustomButton(
                        title: 'Continue',
                        onPress: () async {
                          try {
                            await EasyLoading.show(
                              status: 'loading...',
                              maskType: EasyLoadingMaskType.black,
                            );
                            var response = await API().register(_name.text,
                                _email.text, _password.text, _age.text);
                            if (response['status'] == true) {
                              _timer?.cancel();
                              await EasyLoading.showSuccess(
                                  response['message']);
                              Navigator.of(context)
                                  .pushReplacementNamed('/signin');
                            } else {
                              _timer?.cancel();
                              await EasyLoading.showError(response['message']);
                            }
                          } catch (e) {
                            _timer?.cancel();
                            await EasyLoading.showError('Something Went Wrong');
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
                                .pushReplacementNamed('/signin');
                          },
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Already have an account? ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'Sign In',
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
