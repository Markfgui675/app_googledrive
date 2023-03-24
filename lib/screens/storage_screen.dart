import 'package:flutter/material.dart';

import '../widgets/storage_container.dart';
import '../widgets/upload_options.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            StorageContainer(),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(bottom: 8),
              child: UploadOptions(),
            )
          ],
        )
    );
  }
}
