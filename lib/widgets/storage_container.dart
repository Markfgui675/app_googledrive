import 'package:app_googledrive/utils.dart';
import 'package:flutter/material.dart';

class StorageContainer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.001),
              offset: const Offset(10,10),
              blurRadius: 10
          ),
          BoxShadow(
              color: Colors.grey.withOpacity(0.001),
              offset: const Offset(-10,10),
              blurRadius: 10
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 35),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('33', style: textStyle(50, const Color(0xff635c9b), FontWeight.bold)),
                      Text('%', style: textStyle(17, const Color(0xff635c9b), FontWeight.bold)),
                    ],
                  ),
                  Text('Used', style: textStyle(20, textColor.withOpacity(0.7), FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepOrange
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      children: [
                        Text('Used', style: textStyle(18, textColor.withOpacity(0.7), FontWeight.w600),),
                        Text('50 Gb', style: textStyle(20, const Color(0xff635c9b), FontWeight.w600),)
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.withOpacity(0.25)
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      children: [
                        Text('Free', style: textStyle(18, textColor.withOpacity(0.7), FontWeight.w600),),
                        Text('100 Gb', style: textStyle(20, const Color(0xff635c9b), FontWeight.w600),)
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
