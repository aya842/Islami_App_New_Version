
import 'package:flutter/material.dart';
import 'package:islami_app/core/assets_manger.dart';
import 'package:islami_app/core/strings_manger.dart';

import '../../tabs/hadeth_tab/hadeth_tab.dart';
import '../../tabs/quran_tab/quran_tab.dart';
import '../../tabs/radio_tab/radio_tab.dart';
import '../../tabs/sebha_tab/sebha_tab.dart';
import '../../tabs/settings_tab/settings_tab.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int selectedItem=0;
 List<Widget>Tabs=[
   QuranTab(),
   HadethTab(),
   SebhaTab(),
   RadioTab(),
   SettingsTab()

 ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        image: DecorationImage(image: AssetImage(AssetsManger.bg_light_mode))
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringManger.app_bar),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItem,
            onTap: (index){
              selectedItem=index;
              setState(() {


              });
            },

            items:[
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManger.icon_quran,), ), label: StringManger.label_quran),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManger.icon_hadith), ), label: StringManger.label_hadeth),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManger.icons_sebha,), ), label: StringManger.label_sebha),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManger.icons_radio,), ), label: StringManger.label_radio),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: StringManger.label_settings),

            ]),
        body:Tabs[selectedItem],
      ),
    );
  }
}
