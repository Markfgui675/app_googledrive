import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: ()=> FirebaseAuth.instance.signOut(),
      ),
    );
  }
}
