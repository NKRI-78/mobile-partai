import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:partai/common/utils/custom_themes.dart';
import 'package:partai/common/utils/dimensions.dart';

class HomeCategoryWidget extends StatefulWidget {
  const HomeCategoryWidget({super.key});

  @override
  State<HomeCategoryWidget> createState() => HomeCategoryWidgetState();
}

class HomeCategoryWidgetState extends State<HomeCategoryWidget> {

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
    return AlignedGridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 13.0,
      itemCount: categories.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int i) {
        return InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () {
            
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(18.0),
                height: 70.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff393FCD),
                      Color(0xff0F124B),
                    ]
                  )
                ),
                child: Image.asset(
                  fit: BoxFit.fitHeight,
                  categories[i]["icon"].toString()
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0
                  ),
                  child: Text(
                    categories[i]["name"].toString(),
                    textAlign: TextAlign.center,
                    style: arOneSans.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: Dimensions.fontSizeSmall
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}