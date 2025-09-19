import 'package:alfurqan/core/utils/app_assets.dart';
import 'package:alfurqan/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.index, this.onTap});
  final int index;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      iconSize: 32,
      selectedItemColor: AppColors.black,
      unselectedItemColor: AppColors.white,
      backgroundColor: AppColors.lightPrimary,
      currentIndex: index,

      items: [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppAssets.quranIcon)),
          backgroundColor: AppColors.lightPrimary,
          label: 'قران',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppAssets.hadetIcon)),
          backgroundColor: AppColors.lightPrimary,
          label: 'احاديث',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppAssets.radioIcon)),
          backgroundColor: AppColors.lightPrimary,
          label: 'راديو',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage(AppAssets.sebhaIcon)),
          backgroundColor: AppColors.lightPrimary,
          label: 'سبحة',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_sharp),
          backgroundColor: AppColors.lightPrimary,
          label: 'الاعدادات',
        ),
      ],
    );
  }
}
