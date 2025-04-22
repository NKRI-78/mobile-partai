import 'package:flutter/material.dart';

import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:partai/ktp.dart';

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
      body: CustomScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [
      
          SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF0D0DE0)
                    ),
                    onPressed: () {
                     
                    }, 
                    child: Text("Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFB00)
                      ),
                    ) 
                  ),
                    
                  const SizedBox(height: 10.0),
                    
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF0D0DE0)
                    ),
                    onPressed: () async {
                      // pictures = await CunningDocumentScanner.getPictures(
                      //   noOfPages: 1
                      // ) ?? [];
                      
                      // if (!mounted) return;
                      // setState(() => pictures = pictures);

                      // if(pictures.isNotEmpty) {
                      //   debugPrint("==== ${pictures.first.toString()} ====");
                      // }
                      Navigator.push(context, MaterialPageRoute(builder: (context) => KtpPage()));
                    }, 
                    child: Text("Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFB00)
                      ),
                    )
                  )
                ],
              ),
            )
          )
          
        ],
      ),
    );
  }
}