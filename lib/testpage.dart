// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'package:http/http.dart' as http;

// class workes_post extends StatefulWidget {
//   const workes_post({super.key});

//   @override
//   State<workes_post> createState() => _workes_postState();
// }

// class _workes_postState extends State<workes_post> {
//   Map<String, String> header = {
//     'Content-Type': 'application/json; charset=UTF-8',
//     'Accept': 'application/json',
//   };

//   Future<void> postWork(
//       {required String emaile,
//       required String name,
//       required String password}) async {
//     final User_url = Uri.parse(
//         "https://suman.thakbe.xyz/api/register?name=$name&email=$emaile&password=$password&password_confirmation=$password");
//     http.Response reponse =
//         await http.post(User_url, headers: header, body: {});
//     if (reponse.statusCode == 200) {
//       print("sucess ");
//       print(reponse.body);
//     } else {
//       print(reponse.statusCode);
//     }

    
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: 
//         );
//   }
// }
