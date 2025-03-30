import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B2B2B), // Dark background color
      appBar: AppBar(
        backgroundColor: Color(0xFF2B2B2B), // Match app bar with background
        elevation: 0, // Remove shadow
        title: Text(
          'SELAMAT DATANG $username',
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SELAMAT DATANG $username',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[100], // Light background for the box
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Sudah siap mulai quizmu?!',
                style: TextStyle(
                  color: Colors.black, // Text color
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/quiz');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00E676), // Light green color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'MULAI',
                style: TextStyle(
                  color: Colors.black, // Text color
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}