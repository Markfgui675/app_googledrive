import 'package:app_googledrive/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../controllers/files_screen_controller.dart';

class FolderSection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetX<FilesScreenController>(
        builder: (FilesScreenController foldersController){
          if(foldersController != null && foldersController.foldersList != null){
            return GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: foldersController.foldersList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20
                ),
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade100,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.00001),
                              offset: const Offset(10,10),
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/images/folder.png', width: 82, height: 82, fit: BoxFit.cover),
                        Text(foldersController.foldersList[index].name, style: textStyle(18, textColor, FontWeight.bold),),
                        StreamBuilder<QuerySnapshot>(
                          stream: userCollection.doc(FirebaseAuth.instance.currentUser!.uid).collection('files')
                            .where('folder', isEqualTo: foldersController.foldersList[index].name).snapshots(),
                            builder: (context, snapshot){
                              if(!snapshot.hasData){
                                return CircularProgressIndicator();
                              } else {
                                return Text(
                                  '${snapshot.data!.docs.length} items',
                                  style: textStyle(14, Colors.grey[400]!, FontWeight.bold),
                                );
                              }
                            }
                        )
                      ],
                    ),
                  );
                }
            );
          } else {
            return Center(child: CircularProgressIndicator(),);
          }

    });
  }
}
