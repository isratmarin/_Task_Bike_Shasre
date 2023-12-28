import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task_bike_sharing_app/constant/customButton.dart';
import 'package:task_bike_sharing_app/pages/SignUp/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: CustomTextButton(
                          onPressed: () {
                            setState(() {
                              _currentPage = 0;
                            });
                          },
                          isSelected: _currentPage == 0,
                          text: 'Login',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: CustomTextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Signup()),
                              );
                              _currentPage = 1;
                            }

                            );
                          },
                          isSelected: _currentPage == 1,
                          text: 'Sign Up',
                        ),
                      )
                    ],
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
                  )),
              child: Column(
                children: [
                  Container(
                    child: IntlPhoneField(
                      initialCountryCode: 'BD',
                      flagsButtonMargin: EdgeInsets.fromLTRB(10, 15, 10, 50),
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Log in with your pgone number",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 40,
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
                        onPressed: () {},
                        child: Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}


