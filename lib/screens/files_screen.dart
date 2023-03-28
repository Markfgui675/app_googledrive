import 'package:app_googledrive/controllers/files_screen_controller.dart';
import 'package:app_googledrive/utils.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/folder_section.dart';
import '../widgets/recent_files.dart';
import 'nav_screen.dart';

class FilesScreen extends StatelessWidget {

  TextEditingController _folderController = TextEditingController();
  FilesScreenController filesScreenController = Get.put(FilesScreenController());

  openAddFolderDialog(BuildContext context){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            actionsPadding: const EdgeInsets.only(right: 20, bottom: 10),
            title: Text('New Folder', style: textStyle(17, Colors.black, FontWeight.w600),),
            content: TextFormField(
              controller: _folderController,
              autofocus: true,
              style: textStyle(17, Colors.black, FontWeight.w600),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[300],
                hintText: 'Untitled Folder',
                hintStyle: textStyle(16, Colors.grey, FontWeight.w500)
              ),
            ),
            actions: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: Text('Cancel', style: textStyle(16, textColor, FontWeight.bold),),
              ),
              InkWell(
                onTap: (){
                  userCollection.doc(FirebaseAuth.instance.currentUser!.uid).collection('folders').add(
                    {
                      'name': _folderController.text,
                      'time':DateTime.now()
                    }
                  );
                  Get.back();
                },
                child: Text('Create', style: textStyle(16, textColor, FontWeight.bold),),
              ),
            ],
          );
        }
    );
  }





  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Stack(
            children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RecentFiles(),
                      FolderSection()
                    ],
                  ),
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    onTap: (){
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                          context: context,
                          builder: (context){
                            return Container(
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      openAddFolderDialog(context);
                                    },
                                    child: Row(
                                      children: [
                                        const Icon(EvaIcons.folderAdd, color: Colors.grey, size: 32,),
                                        const SizedBox(width: 5,),
                                        Text('Folder', style: textStyle(20, Colors.black, FontWeight.w600),)
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(EvaIcons.folderAdd, color: Colors.grey, size: 32,),
                                      const SizedBox(width: 5,),
                                      Text('Upload', style: textStyle(20, Colors.black, FontWeight.w600),)
                                    ],
                                  )
                                ],
                              ),
                            );
                          }
                      );
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(
                        child: Icon(Icons.add, color: Colors.white, size: 32,),
                      ),
                    ),
                  )
                )
              )
              ]
          ),
        )
    );
  }
}
