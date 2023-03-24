import 'package:flutter/material.dart';

import '../widgets/folder_section.dart';
import '../widgets/recent_files.dart';

class FilesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: [
          RecentFiles(),
          FolderSection()
        ],
      ),
    );
  }
}
