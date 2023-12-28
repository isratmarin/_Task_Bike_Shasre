import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 30, 200, 50),
                    child: const Text(
                      "Support",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 40, right: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                    )),
                child: Column(
                  children: [
                    TextField(

                      decoration: InputDecoration(
                        labelText: 'Name',

                        labelStyle: TextStyle(color: Colors.grey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.solid),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue, style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.solid),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue, style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Your Message',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.solid),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue, style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        height: 35,
                        width: 200,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.cyan),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                      side: BorderSide(color: Colors.cyan))),
                            ),
                            onPressed: () {},
                            child: Text('Send')),
                      ),
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
