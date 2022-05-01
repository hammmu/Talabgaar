import 'package:flutter/material.dart';
import 'PrivacyPolicy.dart';

class SignUp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(begin:Alignment.topCenter, colors: [
                  Color(0xFF0B0633),
                  Color(0xFF0B0633),
                  Color(0xFF0B0633)
                ])
            ),
            child: Column(
                children: <Widget>[
                  Padding(
                      padding:EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                                child: Image(
                                  image: AssetImage("assets/logo.jpeg")
                                )
                            ),
                            SizedBox(height: 10,),
                            Center(
                                child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 18,))
                            ),
                          ]
                      )
                  ),
                  Expanded(child: Container( decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                      child: SignUpInput()

                  )),
                ]
            )
        )
    );
  }
}


class SignUpInput extends StatelessWidget
{

  final phone = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(30),
        child: Column(
            children: <Widget>[
              SizedBox(height: 10, ),
              Column(
                  children: <Widget> [
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: TextField(
                            controller: phone,
                            decoration: InputDecoration(
                                hintText: "Name: ",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                border: InputBorder.none

                            )
                        )
                    ),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "Phone Number:",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                border: InputBorder.none
                            )
                        )
                    ),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "Address:",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                border: InputBorder.none
                            )
                        )
                    ),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "Password:",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                border: InputBorder.none
                            )
                        )
                    ),
                    SizedBox(height: 40),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: Text("    Sign Up   ", style: TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xFF0B0633)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    side: BorderSide(color: Colors.cyan,),
                                  )
                              )
                          ),
                          onPressed: () {
                            print(phone.text);
                            print("hi");
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => PrivacyPolicy())
                            );
                          },
                        )
                    ),
                  ]
              )
            ]
        )
    );
  }
}
