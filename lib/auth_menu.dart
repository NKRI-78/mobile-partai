import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:partai/common/utils/asset_source.dart';

import 'package:partai/common/utils/color_resources.dart';
import 'package:partai/common/utils/custom_themes.dart';
import 'package:partai/common/utils/dimensions.dart';

import 'package:partai/ktp.dart';
import 'package:partai/models/extract_ktp.dart';
import 'package:partai/shared/basewidgets/button/custom.dart';

class AuthMenuPage extends StatefulWidget {
  const AuthMenuPage({super.key});

  @override
  State<AuthMenuPage> createState() => AuthMenuPageState();
}

class AuthMenuPageState extends State<AuthMenuPage> {
  
  List<String> pictures = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0C3995),
              Color(0xFF041F55),
            ]
          )
        ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [
        
            SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Text("Selamat Datang",
                    style: arOneSans.copyWith(
                      color: Colors.white,
                      fontSize: Dimensions.fontSizeOverLarge,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              
                  Image.asset(AssetSource.logo,
                    height: 180.0,
                  ),
              
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      CustomButton(
                        onTap: () {},
                        isBorder: false,
                        isBorderRadius: true,
                        btnColor: ColorResources.white,
                        btnTextColor: ColorResources.black,
                        btnTxt: "Login",
                      ),
                        
                      const SizedBox(height: 10.0),

                      Row(
                        children: [
                          Flexible(
                            child:  Divider(
                              thickness: 1.0,
                              color: ColorResources.white.withOpacity(0.5),
                            )
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text("Atau",
                              style: arOneSans.copyWith(
                                color: ColorResources.white.withOpacity(0.5)
                              ),
                            ),
                          ),
                          Flexible(
                            child: Divider(
                              thickness: 1.0,
                              color: ColorResources.white.withOpacity(0.5),
                            )
                          )
                        ],
                      ),

                      const SizedBox(height: 10.0),

                      CustomButton(
                        onTap: () async {
                          pictures = await CunningDocumentScanner.getPictures(
                            noOfPages: 1
                          ) ?? [];
                          
                          if (!mounted) return;
                          setState(() => pictures = pictures);
                          
                          if(pictures.isNotEmpty) {
                            final filename = pictures.first.split('/').last;

                            final formData = FormData.fromMap({
                              "media": await MultipartFile.fromFile(
                                filename,
                                filename: filename,
                              ),
                              "folder": "ktp-scan",
                            });

                            Dio dio = Dio();
                            Response res = await dio.post("https://api-rakhsa.inovatiftujuh8.com/api/v1/auth/extract-ktp",
                              data: formData
                            );
                            Map<String, dynamic> data = res.data;
                            ExtractKtpModel extractKtpModel = ExtractKtpModel.fromJson(data);

                            Navigator.push(context, MaterialPageRoute(builder: (context) => KtpPage(
                              address: extractKtpModel.data.result.address,
                              country: extractKtpModel.data.result.country,
                              district: extractKtpModel.data.result.district,
                              expired: extractKtpModel.data.result.expired,
                              gender: extractKtpModel.data.result.gender,
                              job: extractKtpModel.data.result.job,
                              name: extractKtpModel.data.result.name,
                              nik: extractKtpModel.data.result.nik,
                              placeOfBirth: extractKtpModel.data.result.placeDateBirth,
                              religion: extractKtpModel.data.result.religion,
                              rtRw: extractKtpModel.data.result.rtRw,
                              status: extractKtpModel.data.result.status,
                              village: extractKtpModel.data.result.village,
                            )));
                          }
                        },
                        isBorder: true,
                        isBorderRadius: true,
                        isBoxShadow: false,
                        btnBorderColor: ColorResources.white,
                        btnColor: Colors.transparent,
                        btnTextColor: ColorResources.white,
                        btnTxt: "Register",
                      ),

                      const SizedBox(height: 15.0),

                      CustomButton(
                        onTap: () {},
                        isBorder: true,
                        isBorderRadius: true,
                        isBoxShadow: false,
                        btnBorderColor: ColorResources.white,
                        btnColor: Colors.white,
                        btnTextColor: ColorResources.white,
                        customText: true,
                        text: Row(
                          children: [
                            Image.asset("assets/images/icons/ic-google.png",
                              height: 40.0,
                            ),
                            const SizedBox(width: 20.0),
                            Text("Sign Up With Google",
                              style: arOneSans.copyWith(
                                color: ColorResources.black,
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.fontSizeDefault
                              ),
                            )
                          ],
                        ),
                      ),
                        

                    ],
                  ),


                ],
              )
            )
            
          ],
        ),
      ),
    );
  }
}