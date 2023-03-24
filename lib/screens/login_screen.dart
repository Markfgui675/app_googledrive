import 'package:app_googledrive/controllers/authentication_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../utils.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
            end: Alignment.topLeft,
            colors: [
          Colors.deepPurpleAccent,
          Colors.purpleAccent]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
            const Spacer(),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 35),
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
                child: Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Simplify your', style: textStyle(25, const Color(0xff635c9b), FontWeight.w700),),
                      Text('filling system', style: textStyle(25, const Color(0xff635c9b), FontWeight.w700),),
                      const SizedBox( height: 20,),
                      Text('keep your files', style: textStyle(20, textColor, FontWeight.w700),),
                      Text('organized more easily', style: textStyle(20, textColor, FontWeight.w700),),
                      const SizedBox( height: 30,),
                      InkWell(
                        onTap: (){
                          Get.find<AuthController>().login();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.7,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.deepOrangeAccent.withOpacity(0.8),
                          ),
                          child: Center(
                            child: Text("Let's go", style: textStyle(23, Colors.white, FontWeight.w700),),
                          ),
                        ),
                      )

                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
