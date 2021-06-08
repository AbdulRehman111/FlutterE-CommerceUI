import 'package:flutter/material.dart';
import 'pages/userProfile.dart';
import 'pages/Home.dart';
import 'pages/login.dart';
import 'package:scoped_model/scoped_model.dart';
import 'pages/cartpage.dart';
import 'pages/userProfile.dart';
import 'pages/RegisterationForm.dart';
import 'widgets/cartModel.dart';
import 'widgets/info_card.dart';
import 'widgets/Drawer.dart';

void main() => runApp(MyApp(
      model: CartModel(),
    ));

class MyApp extends StatelessWidget {
  final CartModel model;

  const MyApp({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: Login(),
        routes: {
          '/cart': (context) => CartPage(),
          '/userprofile': (context) => UserProfileView(),
          '/signup': (context) => Registration(),
          '/login': (context) => Login(),
        },
      ),
    );
  }
}
