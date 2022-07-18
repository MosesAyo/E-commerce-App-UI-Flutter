import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

import '../../main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: MyApp.themeNotifier.value == ThemeMode.light
          ? ThemeData.light().scaffoldBackgroundColor
          : ThemeData.dark().scaffoldBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: MyApp.themeNotifier.value == ThemeMode.light
              ? Colors.black
              : Colors.grey[100],
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: MyApp.themeNotifier.value == ThemeMode.light
                ? Colors.black
                : Colors.grey[100],
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: MyApp.themeNotifier.value == ThemeMode.light
                ? Colors.black
                : Colors.grey[100],
          ),
          onPressed: () {},
        ),
        IconButton(
            icon: Icon(
              MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
              color: MyApp.themeNotifier.value == ThemeMode.light
                  ? Colors.black
                  : Colors.grey[100],
            ),
            onPressed: () {
              MyApp.themeNotifier.value =
                  MyApp.themeNotifier.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
            }),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
