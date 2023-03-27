import 'package:app_googledrive/utils.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../widgets/folder_section.dart';
import '../widgets/recent_files.dart';

class FilesScreen extends StatelessWidget {
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
                                  Row(
                                    children: [
                                      const Icon(EvaIcons.folderAdd, color: Colors.grey, size: 32,),
                                      const SizedBox(width: 5,),
                                      Text('Folder', style: textStyle(20, Colors.black, FontWeight.w600),)
                                    ],
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
