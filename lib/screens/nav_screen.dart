import 'package:app_googledrive/controllers/navigation_controller.dart';
import 'package:app_googledrive/screens/files_screen.dart';
import 'package:app_googledrive/screens/storage_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/header.dart';

class NavScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(

          appBar: PreferredSize(
            preferredSize: Size.fromHeight(25),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
          ),

          body: Column(
            children: [
              Header(),
              Obx(
                  (){
                    return Get.find<NavigationController>().tab.value == 'Storage' ?
                    StorageScreen() : FilesScreen();
                  }
              )
            ],
          ),

        )

    );
  }
}
