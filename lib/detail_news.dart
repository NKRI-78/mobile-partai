import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partai/common/utils/color_resources.dart';

class DetailNewsPage extends StatelessWidget {
  const DetailNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [

          SliverAppBar(
            backgroundColor: ColorResources.blueDark,
            centerTitle: true,
            title: Text("News"),
            leading: CupertinoNavigationBarBackButton(
              color: Colors.white,
              onPressed: () {

              },
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([

            ])
          )
        ],
      )
    );
  }
}