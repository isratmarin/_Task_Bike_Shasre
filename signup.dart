import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task_bike_sharing_app/constant/customButton.dart';
import 'package:task_bike_sharing_app/pages/SignUp/login.dart';
import 'package:task_bike_sharing_app/pages/SignUp/varification.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int _currentPage1 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                            setState(() {
                              _currentPage1 = 1;
                            });
                          },
                          isSelected: _currentPage1 == 0,
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
                              _currentPage1 = 1;
                            });
                          },
                          isSelected: _currentPage1 == 1,
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
              padding: const EdgeInsets.only(top: 20, left: 40, right: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  )),
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      } else if (!RegExp(
                              r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                    height: 20,
                  ),
                  Text(
                    "Sign up with your email and pgone number",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 30,
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
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          //   String validatedEmail = _emailController.text;
                          //   print('Validated Email: $validatedEmail');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Varification()),
                          );
                        },
                        // },
                        child: Text(
                          "SIGNUP",
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
