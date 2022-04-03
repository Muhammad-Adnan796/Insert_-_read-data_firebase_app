import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadDataScreen extends StatefulWidget {
  const ReadDataScreen({Key? key}) : super(key: key);

  @override
  State<ReadDataScreen> createState() => _ReadDataScreenState();
}

class _ReadDataScreenState extends State<ReadDataScreen> {
  getData() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var result = await firebaseFirestore.collection("User").get();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "Read Data Page",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, dynamic snapshot) {
          if (snapshot!.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Card(
                          elevation: 20,
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                    "${snapshot.data.docs[index]['name']}"),
                              ),
                              Center(
                                child: Text(
                                    "${snapshot.data.docs[index]['email']}"),
                              ),
                            ],
                          )),
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
