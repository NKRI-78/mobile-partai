import 'package:flutter/material.dart';
import 'package:partai/common/utils/color_resources.dart';
import 'package:partai/common/utils/custom_themes.dart';
import 'package:partai/shared/basewidgets/button/custom.dart';

class RegisterAccountPage extends StatefulWidget {
  const RegisterAccountPage({super.key});

  @override
  State<RegisterAccountPage> createState() => RegisterAccountPageState();
}

class RegisterAccountPageState extends State<RegisterAccountPage> {

  late TextEditingController nameC;
  late TextEditingController placeAndBirthdateC;
  late TextEditingController genderC;
  late TextEditingController addressC;
  late TextEditingController rtC;
  late TextEditingController rwC;
  late TextEditingController villageC;
  late TextEditingController subdistrictC;
  late TextEditingController religionC;
  late TextEditingController statusC;
  late TextEditingController countryC;
  late TextEditingController expireAtC;

  @override 
  void initState() {
    super.initState();

    nameC =  TextEditingController();
    placeAndBirthdateC = TextEditingController();
    genderC = TextEditingController();
    addressC = TextEditingController();
    rtC = TextEditingController();
    rwC = TextEditingController();
    villageC = TextEditingController();
    religionC = TextEditingController();
    statusC = TextEditingController();
    countryC = TextEditingController();
    expireAtC = TextEditingController();
  }

  @override
  void dispose() {
    nameC.dispose();
    placeAndBirthdateC.dispose();
    genderC.dispose();
    addressC.dispose();
    rtC.dispose();
    rwC.dispose();
    villageC.dispose();
    religionC.dispose();
    statusC.dispose();
    countryC.dispose();
    expireAtC.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.blueDark,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: ColorResources.transparent
        ),
        padding: EdgeInsets.only(
          top: 12.0,
          left: 16.0,
          right: 16.0,
          bottom: 15.0
        ),
        child: CustomButton(
          isBorder: false,
          isBorderRadius: true,
          btnTxt: "Lanjutkan",
          onTap: () {

          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 30.0
        ),
        physics: BouncingScrollPhysics(),
        children: [
      
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: montserrat.copyWith(
                    color: ColorResources.white
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: nameC,
              ),
          
              const SizedBox(height: 12.0),
              
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                    labelText: "Place / Birth date",
                  labelStyle: montserrat.copyWith(
                    color: ColorResources.white
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: placeAndBirthdateC,
              ),
          
              const SizedBox(height: 12.0),
              
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: genderC,
              ),
          
              const SizedBox(height: 12.0),
                
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: addressC,
              ),
              
              const SizedBox(height: 12.0),
                
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: rtC,
              ),
              
              const SizedBox(height: 12.0),
                
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: rwC,
              ),
          
              const SizedBox(height: 12.0),
                
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: villageC,
              ),
          
              const SizedBox(height: 12.0),
                
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: religionC,
              ),
                
              const SizedBox(height: 12.0),
          
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: statusC,
              ),
          
              const SizedBox(height: 12.0),
                
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: countryC,
              ),
          
              const SizedBox(height: 12.0),
                
              TextField(
                style: montserrat.copyWith(
                  color: ColorResources.white
                ),
                cursorColor: ColorResources.white,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorResources.white
                    )
                  )
                ),
                controller: expireAtC,
              ),
                
            ],
          ),
      
        ],
      )
     
    );
  }

}