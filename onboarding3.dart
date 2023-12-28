
import 'package:flutter/material.dart';
import 'package:task_bike_sharing_app/pages/SignUp/login.dart';
import 'package:task_bike_sharing_app/pages/onBoarding/onboardig2.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({Key? key});

  @override
  _Onboarding3State createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  PageController _pageController = PageController();
  int _currentPageIndex2 = 2;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex2 = index;
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
                  image: 'images/Ride.jpg',
                  title: 'Ride',
                  description:
                  "culpa qui officia deserunt \n mollit anim id est laborum.",
                ),
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
                MaterialPageRoute(builder: (context) => Login()),
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
        color: _currentPageIndex2 == index ? Colors.black : Colors.grey,
      ),
    );
  }
}
