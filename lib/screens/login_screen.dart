import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 52),
            child: Image(
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              image: AssetImage('images/images/filemanager.png'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 30, right: 30, bottom: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 5,
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.cente,
              children: [
                Text('Simplify your')
              ],
            ),
          )
        ],
      ),
    );
  }
}
