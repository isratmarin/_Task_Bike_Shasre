import 'package:flutter/cupertino.dart';

class ImagesSize extends StatelessWidget {
  const ImagesSize({super.key});

  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Container(
              child:Image.asset('images/Shape.png',height: 150,width: 180,),
          ),
        ));
  }
}



