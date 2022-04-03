// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class InsertScreen extends StatefulWidget {
//   const InsertScreen({Key? key}) : super(key: key);
//
//   @override
//   State<InsertScreen> createState() => _InsertScreenState();
// }
//
// class _InsertScreenState extends State<InsertScreen> {
//
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//
//
//   addData()async{
//     FirebaseFirestore  firebaseFirestore = FirebaseFirestore.instance;
//     await firebaseFirestore.collection("Students").add({
//       "name": nameController.text,
//       "email":emailController.text
//     }).catchError((e) {
//       print(e.toString());
//     });
//
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 15,
//         shadowColor: Colors.grey,
//         centerTitle: true,
//         title: Text(
//           "Insert Data Page",
//           style: TextStyle(fontSize: 25, color: Colors.black),
//         ),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 300,
//               width: MediaQuery.of(context).size.width*1,
//               child: Card(
//                 elevation: 20,
//                 shadowColor: Colors.grey,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: TextFormField(
//                         controller: nameController,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.person),
//                           labelText: "Name",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: TextFormField(
//                         controller: emailController,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.email),
//                           labelText: "Email",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 30,),
//                     ElevatedButton(onPressed: (){
//                       addData();
//                     }, child: Text("Submit"),),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
