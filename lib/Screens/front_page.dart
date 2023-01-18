import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vanzee/Settings/SizeConfig.dart';
import '../Constants/constant.dart';
import 'bottom_bar_screens/web_view.dart';
import '../../Constants/purchases_constant.dart';
import '../../Constants/store_config.dart';
import '../../Models/singletons_data.dart';
import '../../Models/styles.dart';
import '../../Components/native_dialog.dart';
import 'package:vanzee/Screens/bottom_bar_screens/paywal.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key, required this.email, required this.password, required this.name}) : super(key: key);
  final email;
  final password;
  final name;
  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  bool _isLoading = false;
  bool isSubscribe = false;
  /*
    We should check if we can magically change the weather
    (subscription active) and if not, display the paywall.
  */

  @override
  void initState() {
    initPlatformState();
    super.initState();
  }

  Future<void> initPlatformState() async {
    // Enable debug logs before calling `configure`.
    await Purchases.setDebugLogsEnabled(true);

    /*
    - appUserID is nil, so an anonymous ID will be generated automatically by the Purchases SDK. Read more about Identifying Users here: https://docs.revenuecat.com/docs/user-ids

    - observerMode is false, so Purchases will automatically handle finishing transactions. Read more about Observer Mode here: https://docs.revenuecat.com/docs/observer-mode
    */
    PurchasesConfiguration configuration;
    if (StoreConfig.isForAmazonAppstore()) {
      configuration = AmazonConfiguration(StoreConfig.instance.apiKey)
        ..appUserID = null
        ..observerMode = false;
    } else {
      configuration = PurchasesConfiguration(StoreConfig.instance.apiKey)
        ..appUserID = null
        ..observerMode = false;
    }
    await Purchases.configure(configuration);

    appData.appUserID = await Purchases.appUserID;

    Purchases.addCustomerInfoUpdateListener((customerInfo) async {
      appData.appUserID = await Purchases.appUserID;

      CustomerInfo customerInfo = await Purchases.getCustomerInfo();
      (customerInfo.entitlements.all[entitlementID] != null &&
              customerInfo.entitlements.all[entitlementID]!.isActive)
          ? appData.entitlementIsActive = true
          : appData.entitlementIsActive = false;

      setState(() {});
    });
  }

  void perfomMagic() async {
    setState(() {
      _isLoading = true;
    });

    CustomerInfo customerInfo = await Purchases.getCustomerInfo();

    if (customerInfo.entitlements.all[entitlementID] != null &&
        customerInfo.entitlements.all[entitlementID]!.isActive == true) {
      setState(() {
        _isLoading = false;
        isSubscribe = true;
      });
      
    } else {
      late Offerings offerings;
      try {
        offerings = await Purchases.getOfferings();
      } on PlatformException catch (e) {
        await showDialog(
            context: context,
            builder: (BuildContext context) => ShowDialogToDismiss(
                title: "Error", content: e.message!, buttonText: 'OK'));
      }

      setState(() {
        _isLoading = false;
      });

      if (offerings == null || offerings.current == null) {
        // offerings are empty, show a message to your user
      } else {
        // current offering is available, show paywall
        await showModalBottomSheet(
          useRootNavigator: true,
          isDismissible: true,
          isScrollControlled: true,
          backgroundColor: kColorBackground,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
          ),
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(
                builder: (BuildContext context, StateSetter setModalState) {
              return Paywall(
                offering: offerings.current!,
                email: widget.email,
                password: widget.password,
                name: widget.name
              );
            });
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unlock',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Unlimited Access',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'to your Learning App',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
            // Padding(padding: EdgeInsets.only(top: 20)),
            // SizedBox(
            //     height: 200,
            //     width: 200,
            //     child: DealsList()),
            Container(
              width: SizeConfig.screenWidth * 0.6,
              height: SizeConfig.screenHeight * 0.17,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              margin: EdgeInsets.only(top: 30),
              child: ListTile(
                leading: Icon(
                  Icons.check_circle,
                  color: Colors.orange,
                ),
                title: Text('3 Day FREE Trial'),
                subtitle: Text('\$9.99 / billed annually'),
              ),
            ),
            InkWell(
              onTap: () => perfomMagic(),
              child: Container(
                width: SizeConfig.screenWidth * 0.4,
                height: SizeConfig.screenHeight * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.orange),
                margin: EdgeInsets.only(top: 30),
                child: Center(
                    child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              'Please cancel at least 24 hours before the subscription ends to cancel the subscription',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Row(
              children: [
                Text(
                  'Please agree to ',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                    link: terms,
                                  )));
                    },
                    child: Text(
                      'terms and conditions',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
