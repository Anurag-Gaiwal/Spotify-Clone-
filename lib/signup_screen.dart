// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.black, // Set the background color to white
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/ytlogo2.png', height: 200, width: 200),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(labelText: 'Email', hintStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(labelText: 'Password', hintStyle: TextStyle(color: Colors.white)),
                obscureText: true,
              ),
              SizedBox(height: 10),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(labelText: 'Confirm Password', hintStyle: TextStyle(color: Colors.white)),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // createAccount();
                  // Handle sign-up logic
                  // For now, let's navigate to the HomeScreen on sign-up success
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Navigate to the login screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Already have an account? Login',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
