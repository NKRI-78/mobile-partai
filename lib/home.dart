import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:partai/common/utils/custom_themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> categories = [
    {
      "id": 1,
      "icon": "assets/images/mart.png",
      "name": "Mart"
    },
    {
      "id": 2,
      "icon": "assets/images/event.png",
      "name": "Event"
    },
    {
      "id": 3,
      "icon": "assets/images/membernear.png",
      "name": "Member Near"
    },
    {
      "id": 4,
      "icon": "assets/images/ppob.png",
      "name": "PPOB"
    },
    {
      "id": 5,
      "icon": "assets/images/media.png",
      "name": "Media"
    },
    {
      "id": 6,
      "icon": "assets/images/news.png",
      "name": "Berita"
    },
    {
      "id": 7,
      "icon": "assets/images/about-us.png",
      "name": "About Us"
    },
    {
      "id": 8,
      "icon": "assets/images/forum.png",
      "name": "Forum"
    }
  ];

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

                AlignedGridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                  itemCount: categories.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int i) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(8.0),
                      onTap: () {
                        
                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff0F124B),
                                  Color(0xff393FCD)
                                ]
                              )
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 70.0
                              ),
                              child: Text(
                                categories[i]["name"].toString(),
                                style: arOneSans.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )

              ])
            ),
          )

        ], 
      )
    );
  }

}