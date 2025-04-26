import 'package:flutter/material.dart';
import 'package:partai/common/utils/color_resources.dart';
import 'package:partai/common/utils/custom_themes.dart';
import 'package:partai/common/utils/dimensions.dart';
import 'package:partai/features/news/presentation/pages/detail_news.dart';

class HomeNewsWidget extends StatefulWidget {
  const HomeNewsWidget({super.key});

  @override
  State<HomeNewsWidget> createState() => HomeNewsWidgetState();
}

class HomeNewsWidgetState extends State<HomeNewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 8.0,
                ),
                child: Text("News",
                  style: arOneSans.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.fontSizeLarge
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                onTap: () {
      
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                  
                      Text("Lihat semuanya",
                        style: arOneSans.copyWith(
                          fontSize: Dimensions.fontSizeDefault,
                          color: ColorResources.grey
                        ),
                      ),
                  
                      Icon(
                        Icons.chevron_right,
                        size: Dimensions.fontSizeDefault,
                        color: ColorResources.grey,
                      )
                  
                    ],
                  ),
                ),
              )
            ],
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 3,
            itemBuilder: (BuildContext context, int i) {
              return Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0
                ),
                decoration: BoxDecoration(
                  color: ColorResources.white
                ),
                child: Card(
                  surfaceTintColor: ColorResources.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: ColorResources.white
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        onTap: () {
                          Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => DetailNewsPage())
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                                                
                            Expanded(
                              flex: 4,
                              child: Image.asset("assets/images/img-news.png",
                                height: 90.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            
                            Expanded(
                              flex: 9,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 220.0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                      child: Text("Legislator Gerindra Bagikan Seragam Sekolah Gratis di Kolaka Utara",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: arOneSans.copyWith(
                                          fontSize: Dimensions.fontSizeDefault,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.black
                                        ),
                                      ),
                                    ),
                                  ),
                              
                                  SizedBox(
                                    width: 220.0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                      child: Text("Partai Gerindra, menyampaikan terima kasih yang tak terhingga",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        maxLines: 1,
                                        style: arOneSans.copyWith(
                                          fontSize: Dimensions.fontSizeSmall,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                                                
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          )

        ],
      ),
    );
  }
}