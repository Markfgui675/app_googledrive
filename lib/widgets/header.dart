import 'package:app_googledrive/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils.dart';

class Header extends StatelessWidget {
  NavigationController navigationController = Get.put(NavigationController());

  Widget tabCell(String text, bool selected, BuildContext context){
    return selected ? Padding(
        padding: EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width *0.45 - 5,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepOrangeAccent,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(10, 10),
                  blurRadius: 10
              ),
              BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(-10, 10),
                  blurRadius: 10
              ),
            ]
        ),
        child: Center(
          child: Text(text, style: textStyle(23, Colors.white, FontWeight.bold)),
        ),
      )
    ) : Container(
      width: MediaQuery.of(context).size.width * 0.45 - 10,
      height: 60,
      child: Center(
        child: Text(text, style: textStyle(23, textColor, FontWeight.bold),)
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text('F-drive', style: textStyle(28, textColor, FontWeight.bold),),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(10,10),
                  blurRadius: 10
                ),
                BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    offset: const Offset(-10,10),
                    blurRadius: 10
                )
              ]
            ),
            child: Obx(
                (){
                  return Row(
                    children: [
                      InkWell(
                        onTap: (){
                          navigationController.changeTab('Storage');
                        },
                        child: tabCell('Storage', navigationController.tab.value == 'Storage', context),
                      ),
                      InkWell(
                        onTap: (){
                          navigationController.changeTab('Files');
                        },
                        child: tabCell('Files', navigationController.tab.value == 'Files', context),
                      ),
                    ],
                  );
                }
            )
          )
        ],
      ),
    );
  }
}
