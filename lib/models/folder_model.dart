import 'package:cloud_firestore/cloud_firestore.dart';

class FolderModel{
  late String id;
  late String name;
  late Timestamp dateCreated;
  late int items;

  FolderModel(this.id, this.name, this.dateCreated, this.items);

  FolderModel.fromDocumentSnapshot(QueryDocumentSnapshot<Object?> doc){
    id = doc.id;
    name = doc['name'];
    dateCreated = doc['time'];

  }
}