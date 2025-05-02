import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:partai/mart/mart_page.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key, required this.idProduct});

  final String idProduct;

  @override
  Widget build(BuildContext context) {
    return const DetailProductView();
  }
}

class DetailProductView extends StatefulWidget {
  const DetailProductView({super.key});

  @override
  State<DetailProductView> createState() => _DetailProductViewState();
}

class _DetailProductViewState extends State<DetailProductView> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          width: double.infinity,
          height: 50,
          color: Colors.transparent,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomBotton(
                  onPressed: () {
                    // showModalBottomSheet(
                    //   isScrollControlled: true,
                    //   shape: const RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.vertical(
                    //       top: Radius.circular(32),
                    //     ),
                    //   ),
                    //   context: context,
                    //   builder:
                    //       (BuildContext context) => Padding(
                    //         padding: MediaQuery.of(context).viewInsets,
                    //         child: ModalBottom(data: data),
                    //       ),
                    // );
                  },
                  isOutline: true,
                  textButton: "Tambah Keranjang",
                  radius: 0,
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomBotton(
                  onPressed: () {
                    // CheckoutRoute(
                    //   from: "NOW",
                    //   qty: "1",
                    //   productId: data?.id.toString() ?? "",
                    // ).push(context);
                  },
                  isOutline: false,
                  textButton: "Beli Sekarang",
                  radius: 0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          CarouselSlider(
            items: [
              InkWell(
                onTap: () {
                  // showCustomImageViewer(
                  //   context,
                  //   data.pictures
                  //           ?.map((media) => media.link)
                  //           .whereType<String>()
                  //           .toList() ??
                  //       [],
                  //   startIndex: e.key,
                  // );
                },
                child: ImageCard(
                  image:
                      "https://p3ud.deliserdangkab.go.id/wp-content/uploads/2020/08/hipwee-digitaldestinantion.jpg",
                  height: 330,
                  radius: 0,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  imageError: "",
                ),
              ),
            ],
            options: CarouselOptions(
              height: 330,
              enableInfiniteScroll: false,
              aspectRatio: 16 / 9,
              autoPlay: false,
              viewportFraction: 1.0,
              onPageChanged: (int i, CarouselPageChangedReason reason) {
                setState(() => current = i);
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 220, right: 10),
              child: Container(
                width: 80,
                height: 30,
                decoration: const BoxDecoration(color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.photo_sharp,
                      size: 20,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "1 / 1",
                      style: const TextStyle(
                        color: Colors.white,
                        // fontSize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const ButtonArrow(),
          BodyDetail(),
        ],
      ),
    );
  }
}

class BodyDetail extends StatelessWidget {
  const BodyDetail({super.key});

  // final DetailProductData? data;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        // List<Reviews> reviewFilter = data?.reviews?.where((review) => review.message != null).toList() ?? [];

        // double totalRiview = data?.reviews?.fold(0.0, (sum, riview) {
        //   return sum! + ((riview.rating ?? 0) / (data?.reviews?.length ?? 0));
        // }) ?? 0;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.zero,
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: 5, width: 35, color: Colors.black12),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Rp 100.000',
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: Dimensions.fontSizeOverLarge,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Stock : 1',
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize: Dimensions.fontSizeLarge,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Text(
                    "Sepatu",
                    style: const TextStyle(
                      color: Colors.black,
                      // fontSize: Dimensions.fontSizeExtraLarge,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Divider(thickness: 1, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // ImageAvatar(
                            //   image: data?.store?.linkPhoto ?? "-",
                            //   radius: 20,
                            //   isVerification: data?.store?.type == "MACHANDAIS" ? true : false,
                            // ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Official Store",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    // fontSize: Dimensions.fontSizeLarge,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Jakarta Selatan",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    // fontSize: Dimensions.fontSizeDefault,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(thickness: 1, color: Colors.grey),
                  const Text(
                    "Informasi Produk",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize: Dimensions.fontSizeExtraLarge,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Berat",
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          "5 Kg",
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(thickness: .5, color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Kondisi ",
                          style: TextStyle(
                            color: Colors.black,
                            // fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          ": Baru",
                          style: const TextStyle(
                            color: Colors.black,
                            // fontSize: Dimensions.fontSizeDefault,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(thickness: .5, color: Colors.grey),
                  const SizedBox(height: 10),
                  const Text(
                    "Deskripsi Produk",
                    style: TextStyle(
                      color: Colors.black,
                      // fontSize: Dimensions.fontSizeExtraLarge,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text('Ini produk sepatu'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Ulasan Pembeli",
                        style: TextStyle(
                          color: Colors.black,
                          // fontSize: Dimensions.fontSizeExtraLarge,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        "Belum ada ulasan",
                        style: TextStyle(
                          color: Colors.black,
                          // fontSize: Dimensions.fontSizeDefault,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ButtonArrow extends StatelessWidget {
  const ButtonArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // CartRoute().push(context);
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  icon: Badge(
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // CartRoute().push(context);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    this.onPressed,
    required this.isOutline,
    required this.textButton,
    this.radius,
    this.showIcon,
    this.icon,
    this.colorBtn = Colors.blue,
  });

  final void Function()? onPressed;
  final bool isOutline;
  final String textButton;
  final double? radius;
  final bool? showIcon;
  final IconData? icon;
  final Color? colorBtn;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: isOutline ? BorderSide(color: colorBtn!) : null,
        backgroundColor: isOutline ? Colors.white : colorBtn!,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showIcon == true
              ? Icon(icon ?? Icons.abc, color: Colors.blue, size: 20)
              : const SizedBox(),
          showIcon == true ? const SizedBox(width: 10) : const SizedBox(),
          Text(
            textButton,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isOutline ? Colors.blue : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
