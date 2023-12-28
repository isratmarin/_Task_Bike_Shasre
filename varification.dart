import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:task_bike_sharing_app/pages/profile/welcome.dart';

class Varification extends StatefulWidget {
  const Varification({super.key});

  @override
  State<Varification> createState() => _VarificationState();
}

class _VarificationState extends State<Varification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.greenAccent,
                  Colors.blue
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child: Column(
          children: [
            Container(
              padding:  EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                       Icon(Icons.arrow_back_ios, size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10, 50, 200, 50),
                    child: const Text("Validation",style: TextStyle(
                        fontSize: 24,fontWeight: FontWeight.w900
                    ),),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  padding:  EdgeInsets.only(top: 20, left: 40, right: 30),
                  decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                      )
                  ),
                  child:  Column(
                    children: [
                  TextField(
                  decoration: InputDecoration(


                    labelStyle: TextStyle(color: Colors.grey
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, style: BorderStyle.solid),
                    ),
                  ),
                  ),
                      // Row(
                      //   children: [
                      //     Text("")
                      //   ],
                      // ),
                      SizedBox(height: 20,),
                      Text('Donec viverra eleifend lacus, vitae \n ullamcorper metus sed.'),
                      SizedBox(height: 20,),
                      Text('+123 852 365',style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w900
                      ),),
                      SizedBox(height: 20,),
                      Text("Didn't receive SMS?",style: TextStyle(
                          color: Colors.greenAccent
                      ),),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: 35,
                          width: 200,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.cyan),
                                foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                                shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100),
                                        side: BorderSide(color: Colors.cyan))),
                              ),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => WelcomePage()),
                                );
                              },
                              child: Text('Continue')),),
                      )


                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
