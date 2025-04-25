import 'package:flutter/material.dart';

import 'package:partai/widgets/home_banner.dart';

import 'package:partai/widgets/home_category.dart';
import 'package:partai/widgets/home_news.dart';
import 'package:partai/widgets/home_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [

          SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: 25.0,
              horizontal: 16.0
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate([

                // Info User
                HomeUserWidget(),

                // Home Banner
                HomeBannerWidget(),

                // Home Category List
                HomeCategoryWidget(),

                // Home News 
                HomeNewsWidget()

              ])
            ),
          )

        ], 
      )
    );
  }

}