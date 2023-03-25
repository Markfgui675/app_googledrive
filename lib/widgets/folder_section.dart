import 'package:app_googledrive/utils.dart';
import 'package:flutter/material.dart';

class FolderSection extends StatelessWidget {
  const FolderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        itemCount: 6,
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
                Text('Photos', style: textStyle(18, textColor, FontWeight.bold),),
                Text('10 items', style: textStyle(14, Colors.grey[400]!, FontWeight.normal),)
              ],
            ),
          );
        }
    );
  }
}
