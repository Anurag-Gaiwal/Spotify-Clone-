// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Home_screen.dart';
import 'search_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
            SizedBox(height: 16),
            Text(
              'Anurag Gaiwal',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              '@Its_Anurag',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 16),
            Text(
              '15 followers',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Following 0',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Image.asset('assets/home.png', height: 24, width: 24, color: Colors.grey),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen())); // Changed to ProfileScreen()
              },
              child: Image.asset('assets/search.png', height: 24, width: 24, color: Colors.grey),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen())); // Changed to ProfileScreen()
              },
              child: Image.asset('assets/profile.png', height: 24, width: 24, color: Colors.white),
            ),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}