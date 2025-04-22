import 'package:flutter/material.dart';

class KtpPage extends StatefulWidget {
  const KtpPage({super.key});

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
                  controller: nameC,  
                ),
            
                const SizedBox(height: 10.0),
            
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Jenis Kelamin",
                    border: OutlineInputBorder()
                  ),
                  controller: genderC
                ),
            
                const SizedBox(height: 10.0),
            
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Alamat",
                    border: OutlineInputBorder()
                  ),
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
                  controller: rwC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kecamatan",
                    border: OutlineInputBorder()
                  ),
                  controller: rwC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Agama",
                    border: OutlineInputBorder()
                  ),
                  controller: relC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Status Perkawinan",
                    border: OutlineInputBorder()
                  ),
                  controller: statC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Pekerjaan",
                    border: OutlineInputBorder()
                  ),
                  controller: jobC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kewarganegaraan",
                    border: OutlineInputBorder()
                  ),
                  controller: countryC,
                ),
        
                const SizedBox(height: 10.0),
        
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Berlaku Hingga",
                    border: OutlineInputBorder()
                  ),
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