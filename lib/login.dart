import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  final formKey = GlobalKey<FormState>();

  late TextEditingController valC;
  late TextEditingController passC;

  @override 
  void initState() {
    super.initState();

    valC = TextEditingController();
    passC = TextEditingController();
  }

  @override 
  void dispose() {
    valC.dispose();
    passC.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            title: Text("Login"),
          ),

          SliverList(
            delegate: SliverChildListDelegate([

              Container(
                margin: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                
                      TextField(),
                
                      const SizedBox(height: 10.0),
                
                      TextField(), 
                
                      const SizedBox(height: 10.0,),

                      FloatingActionButton(
                        onPressed: () {

                        },
                        child: Text("Submit"),
                      )
                
                    ],
                  )
                ),
              )

            ])
          )

        ],
      )
    );
  }
}