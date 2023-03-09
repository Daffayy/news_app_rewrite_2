import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/post_news_screen_controller.dart';

class NewsPostCard extends GetView<PostNewsScreenController> {
  const NewsPostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: ListView(
        children: [
          Text('Judul'),
          const SizedBox(
            height: 16,
          ),
          TextField(
            controller: controller.postTitle,
            autofocus: true,
            onSubmitted: (value){
              controller.reqFocus();
            },
            style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFD9D9D9),
                border:
                OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 28,
          ),
          Text('Content Article'),
          const SizedBox(
            height: 16,
          ),
          TextField(
            controller: controller.postDesc,
            focusNode: controller.nodeTwo,
            style: TextStyle(fontSize: 14, color: Colors.black),
            maxLines: 10,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFD9D9D9),
                border:
                OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 150,
          ),
          Obx(() => GestureDetector(
            onTap: () {
              controller.isLoading.value ? null : controller.onSubmit();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFFFD9D9D9),
              ),
              child: Center(
                child: controller.isLoading.value
                    ? CircularProgressIndicator()
                    : Text(
                  "Post",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
