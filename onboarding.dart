// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Onboarding extends StatefulWidget {
//   const Onboarding({super.key});
//
//   @override
//   State<Onboarding> createState() => _OnboardingState();
// }
//
// class _OnboardingState extends State<Onboarding> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 500,
//             width: 500,
//             child: Image.asset(
//               'images/Locate.jpg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Container(
//             color: Colors.white,
//             height: 200,
//             width: 500,
//             child: Column(
//               children: [
//                 Text(
//                   "Locate",
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Text(
//                   "Exceptuer sint occaecat \n cupidatat priodent,sunt \n in culpa qui officia.",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,),
//                   textAlign: TextAlign.center,
//                 )
//               ],
//             ),
//           ),Container(
//             color: Colors.white,
//             child: Row(
//               children: [
//                 TextButton(onPressed: (){}, child: Text('Skip')),
//                 SizedBox(width: 30,),
//                 Container(
//                   width: 100,
//                   child: Row(
//                     children: [
//                       Icon(Icons.do_not_disturb_on_total_silence_outlined),
//                     ],
//                   ),
//                 ),
//                 SizedBox(width: 30,),
//                 TextButton(onPressed: (){}, child: Text('Next')),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:task_bike_sharing_app/pages/onBoarding/onboardig2.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                _buildOnboardingPage(
                  image: 'images/Locate.jpg',
                  title: 'Locate',
                  description:
                  "Exceptuer sint occaecat \n cupidatat priodent,sunt \n in culpa qui officia.",
                ),
                // Add more pages as needed
              ],
            ),
          ),
          _buildBottomSection(),
        ],
      ),
    );
  }

  Widget _buildOnboardingPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.white,
            height: 200,
            width: 500,
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSection() {
    return Container(

      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              // Handle "Skip" button tap
            },
            child: Text('Skip'),
          ),
          SizedBox(width: 30),
          Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3, // Replace with the total number of onboarding pages
                (index) => _buildDot(index),
              ),
            ),
          ),
          SizedBox(width: 30),
          TextButton(
            onPressed: () {
              // Handle "Next" button tap
              _pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Onboarding2()),
              );
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPageIndex == index ? Colors.black : Colors.grey,
      ),
    );
  }
}
