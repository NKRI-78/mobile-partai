import 'package:flutter/material.dart';

import 'package:partai/common/utils/asset_source.dart';
import 'package:partai/common/utils/color_resources.dart';

import 'package:partai/widgets/drawer.dart';
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

  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override 
  void initState() {
    super.initState();
  }
  
  @override 
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: ColorResources.white,
      drawer: DrawerWidget(),
      body: RefreshIndicator.adaptive(
        onRefresh: () {
          return Future.sync(() {

          });
        },
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            
            SliverAppBar(
              backgroundColor: ColorResources.white,
              centerTitle: true,
              toolbarHeight: 70.0,
              leadingWidth: 80.0,
              title: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Image.asset(AssetSource.logo,
                  width: 40.0,
                  height: 40.0,
                ),
              ),
              leading: Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.only(
                  top: 0.0,
                  left: 0.0,
                ),
                child: Image.asset(
                  AssetSource.profile,
                  fit: BoxFit.cover,
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(
                    right: 12.0
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 30.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 14.0,
                    left: 14.0
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8.0),
                    onTap: () {
                      globalKey.currentState?.openDrawer();
                    }, 
                    child: Icon(
                      Icons.menu,
                       size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
        
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0
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
        ),
      )
    );
  }

}