import 'package:flutter/material.dart';

class ViewPostscreen extends StatelessWidget {
  const ViewPostscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" View Post "),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Suman RoY",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        PopupMenuButton(
                          child: const Icon(Icons.more_vert),
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                                child: Text(
                              "Edit",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.green),
                            )),
                            const PopupMenuItem(
                                child: Text(
                              "Delete",
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            )),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      "Hello Im Suman Roy.This is My First Apps.",
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        height: 200,
                        color: Colors.amber,
                        child: Image.network(
                          "https://scontent.fdac157-1.fna.fbcdn.net/v/t39.30808-6/392865625_1787429015034121_2415569119223199051_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEjUPO6fsPUnA3MvnRiEgA6Jpv2DQXMNKomm_YNBcw0qvEXqE3832L9-fd9x2YVcuoNye4FAtZZi3vLngfbv7wh&_nc_ohc=iZujbxYa8H8AX9QT1v5&_nc_ht=scontent.fdac157-1.fna&oh=00_AfCm69s6RHORviNwJQoApsLkFTLVEvUH1kuN1ITL-ePKWg&oe=653EB083",
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_outline_rounded),
                        Icon(Icons.comment),
                      ],
                    ),
                    const Divider(
                      color: Colors.green,
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              );
            }));
  }
}
