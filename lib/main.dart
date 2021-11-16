import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_fix/pages/cart_page.dart';
import 'package:shamo_fix/pages/checkout_page.dart';
import 'package:shamo_fix/pages/detail_chat.dart';
import 'package:shamo_fix/pages/edit_profile.dart';
import 'package:shamo_fix/pages/home/main_page.dart';
import 'package:shamo_fix/pages/signin_page.dart';
import 'package:shamo_fix/pages/signup_page.dart';
import 'package:shamo_fix/pages/splash_page.dart';
import 'package:shamo_fix/pages/success_page.dart';
import 'package:shamo_fix/providers/auth_provider.dart';
import 'package:shamo_fix/providers/cart_provider.dart';
import 'package:shamo_fix/providers/product_provider.dart';
import 'package:shamo_fix/providers/wishlist_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => const MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => const EditProfilePage(),
          '/cart-page': (context) => const CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/success-page': (context) => SuccessPage(),
        },
      ),
    );
  }
}
