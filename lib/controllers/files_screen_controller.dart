import 'package:app_googledrive/models/folder_model.dart';
import 'package:app_googledrive/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FilesScreenController extends GetxController{

  String uid = FirebaseAuth.instance.currentUser!.uid;
  RxList<FolderModel> foldersList = <FolderModel>[].obs;

  @override
  void onInit(){
    foldersList.bindStream(
      userCollection.doc(uid).collection('folders').orderBy('time', descending: true).snapshots()
          .map((QuerySnapshot query){
            List<FolderModel> folders = [];
            query.docs.forEach((element) {
              FolderModel folder = FolderModel.fromDocumentSnapshot(element);
              folders.add(folder);
            });
            return folders;
          })
    );
  }

}