import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partai/common/utils/color_resources.dart';
import 'package:partai/common/utils/custom_themes.dart';
import 'package:partai/common/utils/dimensions.dart';

class DetailNewsPage extends StatelessWidget {
  const DetailNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator.adaptive(
        onRefresh: () {
          return Future.sync(() {});
        },
        child: CustomScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [
        
            SliverAppBar(
              backgroundColor: ColorResources.blueDark,
              centerTitle: true,
              title: Text("News",
                style: montserrat.copyWith(
                  color: ColorResources.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.fontSizeLarge
                ),
              ),
              leading: CupertinoNavigationBarBackButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
        
            SliverList(
              delegate: SliverChildListDelegate([
        
                Image.asset("assets/images/img-news.png",
                  fit: BoxFit.cover,
                ),
        
                Container(
                  margin: EdgeInsets.only(
                    top: 16.0,
                    left: 16.0,
                    right: 16.0
                  ),
                  child: Text("Bahtra Banong Salurkan Bantuan Seragam Sekolah Gratis Untuk Siswa di Kolaka Utara",
                    maxLines: 3,
                    style: arOneSans.copyWith(
                      fontSize: Dimensions.fontSizeExtraLarge,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.black 
                    ),
                  )
                ),

                Container(
                  margin: EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                    left: 16.0, 
                    right: 16.0
                  ),
                  child: Text("Anggota DPR RI, Bahtra Banong, bersama Penjabat (Pj.) Bupati Kolaka Utara, Yusmin, menyalurkan bantuan seragam sekolah gratis kepada siswa PAUD, SD, SMP, dan SMA di Kolaka Utara, Sulawesi Tenggara. Bantuan ini diberikan sebagai wujud kepedulian terhadap dunia pendidikan. Bahtra Banong berharap bantuan tersebut dapat meringankan beban ekonomi keluarga sekaligus mendorong semangat belajar anak-anak di wilayah tersebut. Program pembagian seragam ini merupakan hasil kolaborasi antara pemerintah pusat dan daerah dalam meningkatkan akses pendidikan yang layak bagi semua kalangan. “Insya Allah, ke depan pendidikan kita semakin berkualitas dan anak-anak kita semakin berprestasi. Dengan adanya bantuan seragam sekolah gratis ini, mereka tidak akan terbebani lagi oleh kebutuhan seragam sekolah,” kata Bahtra, Kamis (16/1/2025). Sementara itu, Yusmin menambahkan bahwa program ini adalah wujud nyata perhatian pemerintah terhadap masa depan generasi muda.",
                    style: montserrat.copyWith(
                      color: ColorResources.grey,
                      fontSize: Dimensions.fontSizeDefault
                    ),
                  ))
        
              ])
            )
          ],
        ),
      )
    );
  }
}