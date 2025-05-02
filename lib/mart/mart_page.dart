import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:partai/mart/mart_detail_page.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MarketplaceView();
  }
}

class MarketplaceView extends StatelessWidget {
  const MarketplaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Marketplace"),
            primary: true,
            pinned: true,
          ),
          // const HeaderSection(),
          // SliverList(delegate: SliverChildListDelegate([const CategoryList()])),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 20.0,
                mainAxisExtent: 230.0,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                // final data = state.product[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailProductPage(idProduct: '1'),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 140,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          // color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(16),
                          // border: Border.all(color: AppColors.primaryBlue, width: 3),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: AppColors.primaryBlue.withOpacity(0.8),
                          //     spreadRadius: -5,
                          //     blurRadius: 30,
                          //     // ignore: prefer_const_constructors
                          //     offset: Offset(10, 0), // Shadow only on the right side
                          //   ),
                          // ],
                        ),
                        child: ImageCard(
                          image:
                              "https://p3ud.deliserdangkab.go.id/wp-content/uploads/2020/08/hipwee-digitaldestinantion.jpg", // Replace with your image URL
                          height: 140,
                          radius: 0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          imageError: 'assets/images/image_error.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Sepatu ${index + 1}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            // fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.w500,
                            // color: AppColors.greyColor,
                          ),
                        ),
                      ),
                      Text(
                        'Rp. 100.000',
                        style: const TextStyle(
                          // fontSize: Dimensions.fontSizeLarge,
                          fontWeight: FontWeight.bold,
                          // color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final double radius;
  final BoxFit? fit;
  final String imageError;
  const ImageCard({
    super.key,
    required this.image,
    required this.height,
    required this.radius,
    required this.width,
    this.fit = BoxFit.fill,
    required this.imageError,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        width: width,
        imageUrl: image,
        height: height,
        fit: fit,
        placeholder: (BuildContext context, String val) {
          return SizedBox(
            width: width,
            height: height,
            child: Card(
              margin: EdgeInsets.zero,
              // color: AppColors.whiteColor,
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  // color: AppColors.whiteColor
                ),
              ),
            ),
          );
        },
        errorWidget: (BuildContext context, String text, dynamic _) {
          return Image.asset(
            imageError,
            width: width,
            height: height,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
