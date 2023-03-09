import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';


class NewsCard extends StatelessWidget {
  final String title, description, id, userId;

   NewsCard({super.key, required this.title, required this.description, required
   this.id,required this.userId});

   final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
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
                  trailing: IconButton(
                    onPressed: () {
                      homeController.deleteArticle(userId: id.toString());
                    },
                    icon: Icon(Icons.close, color: Colors.black,),
                  ),
                  title: Text(title, style: TextStyle(fontWeight: FontWeight
                      .bold, fontSize: 18, overflow: TextOverflow.ellipsis)),
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
