import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'PrivacyPolicy.dart';
import 'Database.dart';
class Login extends StatelessWidget
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
                                child:  Image(
                                    image: AssetImage("assets/logo.jpeg")
                                )
                            ),
                            SizedBox(height: 10,),
                            Center(
                                child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 18,))
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
                      child: Input()

                  )),
                ]
            )
        )
    );
  }
}


class Input extends StatelessWidget
{

  final phone = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(30),
        child: Column(
            children: <Widget>[
              SizedBox(height: 40, ),
              Column(
                  children: <Widget> [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: TextField(
                            controller: phone,
                            decoration: InputDecoration(
                                hintText: "Enter your Phone Number",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            )
                        )
                    ),
                    SizedBox(height: 25),
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: TextField(
                          controller: pass,
                            decoration: InputDecoration(
                                hintText: "Enter your Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            )
                        )
                    ),
                    SizedBox(height: 40),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: Text("    Login    ", style: TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                            String s = phone.text;
                            if(s.isEmpty)
                              {
                                print("empty phone");
                              }
                            else if(pass.text.isEmpty)
                              {
                                print("empty pass");
                              }
                            else
                              {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => PrivacyPolicy())
                                );
                              }
                            Database.logIn();
                          },
                        )
                    ),
                    SizedBox(height: 20),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: Text("   Sign Up  ", style: TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SignUp())
                            );
                          },
                        )
                    )
                  ]
              )
            ]
        )
    );
  }
}
