import 'package:flutter/material.dart';
import 'package:partai/common/utils/color_resources.dart';
import 'package:partai/common/utils/custom_themes.dart';
import 'package:partai/common/utils/dimensions.dart';

class HomeUserWidget extends StatefulWidget {
  const HomeUserWidget({super.key});

  @override
  State<HomeUserWidget> createState() => HomeUserWidgetState();
}

class HomeUserWidgetState extends State<HomeUserWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 6.0,
        right: 6.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Hello Abdul",
                style: montserrat.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.fontSizeLarge,
                  color: ColorResources.black
                ),
              ),
              Text("Partai Gema Bangsa",
                style: montserrat.copyWith(
                  fontSize: Dimensions.fontSizeSmall,
                  color: ColorResources.grey
                ),
              )
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Saldo e-Wallet",
                style: montserrat.copyWith(
                  fontSize: Dimensions.fontSizeSmall,
                  color: ColorResources.black
                ),
              ),
              const SizedBox(height: 2.0),
              Text("Rp. 150.000",
                style: montserrat.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.fontSizeSmall,
                  color: ColorResources.black
                ),
              )
            ],
          ),

        ],
      )
    );
  }
}