import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';


class NewsCard extends StatelessWidget {
  final String title, description, id;

   NewsCard({super.key, required this.title, required this.description, required
   this.id});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 200,
      child: Padding(
        padding: EdgeInsets.only(top: 40, left: 20,right: 30),
        child: InkWell(
          onTap: (){
            Get.toNamed(Routes.DETAIL_NEWS_SCREEN, arguments: {'id': id});
          },
          child: Card(
            color: Color(0xffd9d9d9),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(30),
           ),
            child: Column(
              children: [
                ListTile(
                  title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  subtitle: Text(description, style: TextStyle(color: Colors.black, fontSize: 16), maxLines: 3, overflow: TextOverflow.ellipsis),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
