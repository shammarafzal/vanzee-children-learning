import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import '../../Constants/purchases_constant.dart';
import '../../Models/singletons_data.dart';
import '../../Models/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Paywall extends StatefulWidget {
  final Offering offering;
  final email;
  final password;
  final name;
  const Paywall({Key? key, required this.offering,  required this.email, required this.password, required this.name}) : super(key: key);

  @override
  _PaywallState createState() => _PaywallState();
}

class _PaywallState extends State<Paywall> {

  Future signUp() async {
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: widget.email, password: widget.password);
      await FirebaseFirestore.instance.collection('users').add({
        'email': widget.email,
        'fullName': widget.name,
        'isSubscribe': true
      });
      await EasyLoading.showSuccess(
          "Signup Succeeded");

    } on FirebaseAuthException catch(e){
      _handleSignupError(e);
    }

  }
  void _handleSignupError(FirebaseAuthException e) async{
    String message;
    switch (e.code){
      case 'email-already-in-use':
        message = 'This email is already in use';
        break;
      case 'invalid-email':
        message = 'This email is invalid';
        break;
      case 'operation-not-allowed':
        message = 'This operation is not allowed';
        break;
      case 'weak-password':
        message = 'This password is weak, try another password';
        break;
      default:
        message = 'An unknown error occured';
        break;
    }
    await EasyLoading.showError(message);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Wrap(
          children: <Widget>[
            // Container(
            //   height: 70.0,
            //   width: double.infinity,
            //   decoration: const BoxDecoration(
            //       color: Colors.black,
            //       borderRadius:
            //       BorderRadius.vertical(top: Radius.circular(25.0))),
            //   child: const Center(
            //       child:
            //       Text('✨ Talk Tales Premium',)),
            // ),
            const Padding(
              padding:
              EdgeInsets.only(top: 32, bottom: 16, left: 16.0, right: 16.0),
              child: SizedBox(
                child: Text(
                  'Talk Tales Premium',
                  style: TextStyle(color: Colors.white),
                ),
                width: double.infinity,
              ),
            ),
            ListView.builder(
              itemCount: widget.offering.availablePackages.length,
              itemBuilder: (BuildContext context, int index) {
                var myProductList = widget.offering.availablePackages;
                return Card(
                  color: Colors.black,
                  child: ListTile(
                      onTap: () async {
                        try {
                          CustomerInfo customerInfo =
                          await Purchases.purchasePackage(
                              myProductList[index]);
                          appData.entitlementIsActive = customerInfo
                              .entitlements.all[entitlementID]!.isActive;
                          signUp();
                          await Navigator.of(context).pushReplacementNamed('/login');
                        } catch (e) {
                          print(e);
                        }

                        setState(() {});
                        Navigator.pop(context);
                      },
                      title: Text(
                        myProductList[index].storeProduct.title,
                        style: kTitleTextStyle,
                      ),
                      subtitle: Text(
                        myProductList[index].storeProduct.description,
                        style: kDescriptionTextStyle.copyWith(
                            fontSize: kFontSizeSuperSmall),
                      ),
                      trailing: Text(
                          myProductList[index].storeProduct.priceString,
                          style: kTitleTextStyle)),
                );
              },
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
            ),
            const Padding(
              padding:
              EdgeInsets.only(top: 32, bottom: 16, left: 16.0, right: 16.0),
              child: SizedBox(
                child: Text(
                  footerText,
                  style: kDescriptionTextStyle,
                ),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
