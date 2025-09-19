import 'package:alfurqan/core/utils/app_assets.dart';
import 'package:alfurqan/screens/tabs/hadeth_tab.dart';
import 'package:alfurqan/screens/tabs/quran_tab.dart';
import 'package:alfurqan/screens/tabs/radio_tab.dart';
import 'package:alfurqan/screens/tabs/sebha_tab.dart';
import 'package:alfurqan/screens/tabs/settings_tab.dart';
import 'package:alfurqan/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    RadioTab(),
    SebhaTab(),
    SettingsTab(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.backgroundLight),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('الفرقان'),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: tabs[index],
        bottomNavigationBar: CustomNavBar(
          index: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
        ),
      ),
    );
  }
}
