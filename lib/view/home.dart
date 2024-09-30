import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musikplayer_mvvm/assets/app_images.dart';
import 'package:musikplayer_mvvm/assets/app_vector.dart';
import 'package:musikplayer_mvvm/view/widgets/app_bar.dart';
import 'package:musikplayer_mvvm/view/widgets/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:BasicAppbar(
        hideBack: true,
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ) ,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _homeTopCard(),
            _tabs(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget _homeTopCard(){
    return Center(
      child: SizedBox(
        height: 140,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                AppVectors.homeTopCard
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 60
                ),
                child: Image.asset(
                  AppImages.homeArtist
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  Widget _tabs() {
    return TabBar(
      controller: _tabController,
      isScrollable: false,
      labelColor: context.isDarkMode ? Colors.white : Colors.black,
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 12
      ),
      tabs: const [
      Text(
        'News',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16
        ),
      ),
      Text(
        'Videos',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16
        ),
      ),
      Text(
        'Artist',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16
        ),
      ),
      Text(
        'Podcast',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16
        ),
      )
    ],
    );
  }
}