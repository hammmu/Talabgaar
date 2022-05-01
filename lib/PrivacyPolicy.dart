import 'package:flutter/material.dart';
class PrivacyPolicy extends StatelessWidget
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
                                child: Text("Privacy Policy", style: TextStyle(color: Colors.white, fontSize: 18,))
                            ),
                          ]
                      )
                  ),
                  Expanded(child: Container( decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                    ),
                  ),
                      child: InputI()
                  )),
                ]
            )
        )
    );
  }
}

class InputI extends StatelessWidget
{

  final phone = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Column(
            children: <Widget>[
              Column(
                  children: <Widget> [
                    Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: Text("\n\n\n This privacy notice for Talabgar (\"Company,\" \"we,\" \"us,\" or \"our\"), describes how and why we might collect, store, use, and/or share (\"process\") your information when you use our services (\"Services\"), such as when you: ",
                          style: TextStyle(color: Colors.black, fontSize: 16)
                          ,textAlign: TextAlign.center,

                        ),),
                    Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey)
                            )
                        ),
                        child: Text("\nDownload and use our mobile application (Talabgar), or any other application of ours that links to this privacy notice\nEngage with us in other related ways, including any sales, marketing, or events\nQuestions or concerns? Reading this privacy notice will help you understand your privacy rights and choices. If you do not agree with our policies and practices, please do not use our Services. If you still have any questions or concerns, please contact us at talabgar247@gmail.com.",
                          style: TextStyle(color: Colors.black, fontSize: 16)
                          ,textAlign: TextAlign.center,
                        )

                    ),


                  ]
              )
            ]
        )
    );
  }
}