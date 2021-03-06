import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vanzee/API/api.dart';
import 'package:vanzee/Screens/Components/customButton.dart';
import 'package:vanzee/Screens/Components/customTextField.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  Timer? _timer;
  final _password = TextEditingController();
  final _passwordConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(241, 229, 225, 0.3),
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color.fromRGBO(241, 229, 225, 0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: SizeConfig.screenHeight * 0.60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Assets/child.png',
                      width: 100,
                      height: 100,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text(
                      'Change Password',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    CustomTextField(
                      controller: _password,
                      isPassword: true,
                      hintText: 'Password',
                    ),
                    CustomTextField(
                      controller: _passwordConfirm,
                      isPassword: true,
                      hintText: 'Confirm Password',
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: CustomButton(
                        title: 'Change Password',
                        onPress: () async {
                          try {
                            await EasyLoading.show(
                              status: 'loading...',
                              maskType: EasyLoadingMaskType.black,
                            );
                            var response = await API().changePassword(
                                _password.text, _passwordConfirm.text);
                            if (response['status'] == false) {
                              _timer?.cancel();
                              await EasyLoading.showError(response['message']);
                            } else {
                              _timer?.cancel();
                              await EasyLoading.showSuccess(
                                  response['message']);
                              Navigator.of(context).pushReplacementNamed(
                                '/signin',
                              );
                            }
                          } catch (e) {
                            _timer?.cancel();
                            await EasyLoading.showError('Something Went Wrong');
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
