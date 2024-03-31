import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:vesselv3/Screens/GooglePay/sampleConfig.dart';

class GPayScreen extends StatefulWidget {
  const GPayScreen({super.key});

  @override
  State<GPayScreen> createState() => _GPayScreenState();
}

class _GPayScreenState extends State<GPayScreen> {
  String os = Platform.operatingSystem;

  var applePayButton = ApplePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultApplePay),
    paymentItems: [
      PaymentItem(
        amount: '0.01',
        label: 'Item A',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        amount: '0.01',
        label: 'Item B',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        amount: '0.02',
        label: 'Total',
        status: PaymentItemStatus.final_price,
      ),
    ],
  );

  var googlePayButton = GooglePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
    paymentItems: [
      PaymentItem(
        amount: '0.01',
        label: 'Total',
        status: PaymentItemStatus.final_price,
      )
    ],
    width: double.infinity,
    type: GooglePayButtonType.pay,
    margin: EdgeInsets.only(top: 15),
    onPaymentResult: (result) => debugPrint('Payment Result $result'),
    loadingIndicator: Center(
      child: CircularProgressIndicator(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Platform.isIOS ? applePayButton : googlePayButton,
        ),
      ),
    );
  }
}
