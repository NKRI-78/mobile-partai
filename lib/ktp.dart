import 'package:flutter/material.dart';

class KtpPage extends StatefulWidget {
  final String address;
  final String country;
  final String district;
  final String expired;
  final String gender;
  final String job;
  final String name;
  final String nik;
  final String placeOfBirth;
  final String religion;
  final String rtRw;
  final String status;
  final String village;

  const KtpPage({
    required this.address,
    required this.country,
    required this.district,
    required this.expired,
    required this.gender,
    required this.job,
    required this.name,
    required this.nik,
    required this.placeOfBirth,
    required this.religion,
    required this.rtRw,
    required this.status,
    required this.village,
    super.key
  });

  @override
  State<KtpPage> createState() => KtpPageState();
}

class KtpPageState extends State<KtpPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController nameC;
  late TextEditingController genderC;
  late TextEditingController addressC;
  late TextEditingController rtC;
  late TextEditingController rwC;
  late TextEditingController kelC;
  late TextEditingController kecC;
  late TextEditingController relC;
  late TextEditingController statC;
  late TextEditingController jobC;
  late TextEditingController countryC;
  late TextEditingController expireC;

  @override  
  void initState() {
    super.initState();

    nameC = TextEditingController();
    genderC = TextEditingController();
    addressC = TextEditingController();
    rtC = TextEditingController();
    rwC = TextEditingController();
    kelC = TextEditingController();
    kecC = TextEditingController();
    relC = TextEditingController();
    statC = TextEditingController();
    jobC = TextEditingController();
    countryC = TextEditingController();
    expireC = TextEditingController();

    nameC = TextEditingController(text: widget.name);
  }

  @override 
  void dispose() {
    nameC.dispose();
    genderC.dispose();
    addressC.dispose();
    rtC.dispose();
    rwC.dispose();
    kelC.dispose();
    kecC.dispose();
    relC.dispose();
    statC.dispose();
    jobC.dispose();
    countryC.dispose();
    expireC.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Container(
            margin: EdgeInsets.only(
              top: 50.0,
              bottom: 50.0,
              left: 10.0,
              right: 10.0
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
            
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nama",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: nameC,  
                ),
            
                const SizedBox(height: 10.0),
            
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Jenis Kelamin",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: genderC
                ),
            
                const SizedBox(height: 10.0),
            
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Alamat",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: addressC,
                ),
            
                const SizedBox(height: 10.0),
        
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
        
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "RT",
                          border: OutlineInputBorder()
                        ),
                        readOnly: true,
                        controller: rtC,
                      ) 
                    ),
        
                    Expanded(
                      flex: 1,
                      child: Container()
                    ),
        
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "RW",
                          border: OutlineInputBorder()
                        ),
                        readOnly: true,
                        controller: rtC,
                      ) 
                    )
        
                  ],
                ),
            
                const SizedBox(height: 10.0),
            
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kelurahan",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: rwC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kecamatan",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: rwC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Agama",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: relC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Status Perkawinan",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: statC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Pekerjaan",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: jobC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kewarganegaraan",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: countryC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Berlaku Hingga",
                    border: OutlineInputBorder()
                  ),
                  readOnly: true,
                  controller: expireC,
                ),
            
              ],
            ),
          )
        ),
      )
    );
  }
}