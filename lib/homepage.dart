import 'package:blockbd/screen/post_screen.dart';
import 'package:blockbd/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  int currerntIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Bangla Blog"),
        actions: [
          Icon(
            Icons.notifications,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Icon(
              Icons.logout,
            ),
          ),
        ],
      ),

      // body: currerntIndex == 0 ? Postscreen() : Profilescreen(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(PostScreen());
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Post",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.home),
            //   label: "Home",
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: currerntIndex,
          onTap: (value) {
            currerntIndex = value;
          },
        ),
      ),
    );
  }
}
