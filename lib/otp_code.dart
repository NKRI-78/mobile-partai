import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:partai/common/utils/color_resources.dart';
import 'package:partai/common/utils/custom_themes.dart';
import 'package:partai/common/utils/dimensions.dart';
import 'package:partai/shared/basewidgets/button/custom.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OtpCodePage extends StatefulWidget {
  const OtpCodePage({super.key});

  @override
  State<OtpCodePage> createState() => OtpCodePageState();
}

class OtpCodePageState extends State<OtpCodePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.blueDark,
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            title: Text("Kode OTP",
              style: montserrat.copyWith(
                fontSize: Dimensions.fontSizeOverLarge,
                fontWeight: FontWeight.bold,
                color: ColorResources.white
              ),
            ),
            backgroundColor: ColorResources.transparent,
            centerTitle: true,
            leading: CupertinoNavigationBarBackButton(
              color: ColorResources.white,
              onPressed: () {
                debugPrint("hello");
              },
            ),
          ),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Container(
                  margin: EdgeInsets.only(
                    top: 15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                  
                      Text("Kami telah mengirimkan Kode OTP ke",
                        style: montserrat.copyWith(
                          color: ColorResources.white,
                          fontSize: Dimensions.fontSizeDefault
                        ),
                      ),
                  
                      Text("reihanagam7@gmail.com",
                        style: montserrat.copyWith(
                          color: ColorResources.yellowDark,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.fontSizeDefault
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                          top: 30.0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Text("Masukan Kode OTP pada",
                              style: montserrat.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.fontSizeLarge,
                                color: ColorResources.white
                              ),
                            ),

                            Text("Kolom yang tersedia",
                              style: montserrat.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.fontSizeLarge,
                                color: ColorResources.white
                              ),
                            ),

                            const SizedBox(height: 25.0),

                            Pinput(
                              defaultPinTheme: PinTheme(
                                width: 72.0,
                                height: 72.0,
                                textStyle: montserrat.copyWith(
                                  fontSize: Dimensions.fontSizeOverLarge,
                                  fontWeight: FontWeight.bold,
                                  color: ColorResources.white
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorResources.white
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0)
                                  )
                                )
                              ),
                              onCompleted: (String pin) {
                                 debugPrint(pin);
                              },
                            ),

                            const SizedBox(height: 16.0),

                            Countdown(
                              seconds: 20,
                              build: (BuildContext context, double time) {
                                return Text(time.toInt().toString(),
                                  style: montserrat.copyWith(
                                    color: ColorResources.yellowDark,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Dimensions.fontSizeOverLarge
                                  ),
                                );
                              },
                              interval: Duration(milliseconds: 1000),
                              onFinished: () {
                                debugPrint('Timer is done!');
                              },
                            ),

                            const SizedBox(height: 16.0),

                            SizedBox(
                              width: 350.0,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: "Klik disini",
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    debugPrint("hello world");
                                  },
                                  style: montserrat.copyWith(
                                    color: ColorResources.yellowDark,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Dimensions.fontSizeLarge
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(text: ' apabila belum mendapatkan Kode OTP',
                                      style: montserrat.copyWith(
                                        color: ColorResources.white,
                                        fontSize: Dimensions.fontSizeLarge
                                      )
                                    )
                                  ]
                                ),
                              ),
                            ),

                          ],
                        ) 
                      )
                  
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(
                    left: 12.0,
                    right: 12.0,
                    bottom: 25.0
                  ),
                  child: CustomButton(
                    onTap: () {},
                    isBorder: false,
                    isBorderRadius: true,
                    fontSize: Dimensions.fontSizeLarge,
                    btnColor: ColorResources.white,
                    btnTextColor: ColorResources.blueDark,
                    btnTxt: "Selanjutnya",
                  ),
                )

              ],
            )
          )

        ],
      )
    );
  }

}