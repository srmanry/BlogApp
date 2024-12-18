import 'package:blockbd/api_service/repostitory/constant.dart';
import 'package:blockbd/screen/post/post_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/post/create_post.dart';
import 'screen/post/profile_screen.dart';
import 'screen/view/view_post.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  int currerntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("Bangla Blog"),
        actions: const [
          Icon( Icons.notifications,),
          Padding( padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Icon(  Icons.logout, ),),
        ],),

      body: currerntIndex == 0 ? Postscreen() : const Profilescreen(),
      // body: currerntIndex == 0 ? Createpost() : const Profilescreen(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.to(Postscreen());
      //     // Get.to(Createpost());
      //   },
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: InkWell(onTap: () {  Get.to(const ViewPostscreen());},
                  child: const Icon(Icons.home)), label: "Home",
            ),
            BottomNavigationBarItem(
              icon: InkWell( onTap: () {Get.to(Postscreen());},
              child: const Icon(Icons.add)),label: "Create Post",
            ),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", ),
          ],
          currentIndex: currerntIndex,
          onTap: (value) {  currerntIndex = value;},
        ),
      ),
    );
  }
}
