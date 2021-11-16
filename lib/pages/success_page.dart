import 'package:flutter/material.dart';
import 'package:shamo_fix/theme.dart';

class SuccessPage extends StatelessWidget {
  // const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: true,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            'Checkout Sucess',
            style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You made a transaction',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Stay at home while we \nprepare your dream shoes',
              style: secondaryTextStyle.copyWith(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Container(
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left: 90, right: 90),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Order Other Shoes',
                  style: primaryTextStyle.copyWith(
                      fontWeight: reguler, fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 44,
              width: double.infinity,
              padding: EdgeInsets.only(left: 90, right: 90),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/cart-page', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff39374B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'View My Order',
                  style: secondaryTextStyle.copyWith(
                      fontWeight: reguler, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      // appBar: header(),
      appBar: header(),
      body: content(),
    );
  }
}
