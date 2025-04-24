import 'package:flutter/material.dart';

import 'package:partai/common/utils/color_resources.dart';
import 'package:partai/common/utils/custom_themes.dart';
import 'package:partai/common/utils/dimensions.dart';

import 'package:partai/widgets/home_category.dart';
import 'package:partai/widgets/home_news.dart';

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