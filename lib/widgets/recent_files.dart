import 'package:app_googledrive/utils.dart';
import 'package:flutter/material.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Recent Files', style: textStyle(20, textColor, FontWeight.bold),),
        ),
        const SizedBox(height: 15,),
        Container(
          height: 100,
          child: ListView.builder(
            itemCount: 7,
            scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Padding(
                    padding: EdgeInsets.only(right: 13),
                  child: Container(
                    height: 65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: const Image(
                              width: 65,
                              height: 60,
                              image: NetworkImage('https://static.natura.com/cdn/ff/QIGkJJDc8qRhSK2WZizn2dRx-rMLBvEQl1ISSXl4xWg/1663835229/public/styles/original/public/2019-05/como-se-conectar-trazer-natureza-perto-natura-header-mobile.jpg?itok=q3-IjGRD'),
                              fit: BoxFit.cover,)
                        ),
                        const SizedBox(height: 5,),
                        Text('file.png', style: textStyle(14, textColor, FontWeight.normal),
                          overflow: TextOverflow.ellipsis,)
                      ],
                    ),
                  ),
                );
              }
          ),
        )
      ],
    );
  }
}
