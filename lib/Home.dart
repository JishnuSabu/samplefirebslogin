import 'package:flutter/material.dart';
import 'package:samplefirebslogin/Authentication.dart';
import 'package:samplefirebslogin/main.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: const Center(
        child: Text('Welcome'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthenticationHelper()
              .signOut()
              .then((_) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (contex) => MyAppLogin()),
          ));
        },
        tooltip: 'Logout',
        child: const Icon(Icons.logout),
      ),
    );
  }
}