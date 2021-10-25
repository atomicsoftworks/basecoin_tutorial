import 'package:basecoin/manager/network_manager.dart';
import 'package:basecoin/screens/asset_details.dart';
import 'package:basecoin/utilities/colors.dart';
import 'package:basecoin/utilities/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/assets/assets.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _assets = NetworkManager.instance.getAssets();

  @override
  void initState() {
    super.initState();

    themeNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: themeNotifier.currentTheme(),
      title: 'Basecoin',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: AppColors.marinerBlue,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        primaryColor: AppColors.marinerBlue,
        backgroundColor: AppColors.lilyWhite,
        textTheme: ThemeData.light().textTheme.copyWith(),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.black),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(primary: Colors.black),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: AppColors.deepBlack,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.white),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(primary: Colors.white),
        ),
        primaryColor: AppColors.deepBlack,
        backgroundColor: AppColors.deepBlack,
        canvasColor: AppColors.bunkerBlack,
        scaffoldBackgroundColor: AppColors.deepBlack,
      ),
      home: FutureBuilder<Assets>(
        future: _assets,
        builder: (BuildContext context, snapshot) {
          if (!snapshot.hasData) return Container();

          final assets = snapshot.data!.assets!;

          return AssetDetails(
            asset: assets[0],
          );
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
