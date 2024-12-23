import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Email: example@example.com'), // Fetch from FirebaseAuth
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement Logout Logic via ViewModel
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}