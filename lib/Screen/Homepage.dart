import 'dart:developer';
import 'package:book/Screen/Addbook.dart';
import 'package:book/screen/detailspage.dart';
import 'package:book/utils/comman.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('Book');
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: w * 0.05),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addbook(),
                        ));
                  },
                  icon: Icon(
                    Icons.add,
                    size: 35,
                  ),
                  color: Colors.black,
                ))
          ],
          title: Text(
            "Browse",
            style:
                TextStyle(fontSize: 30, color: Colors.black, fontFamily: "f1"),
          )),
      body: SafeArea(
        child: StreamBuilder(
          stream: collectionReference.snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Eroore"),
              );
            } else if (snapshot.hasData) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index) =>
                    SizedBox(height: h * 0.03),
                itemCount: snapshot.data?.docs.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final DocumentSnapshot documentSnapshot =
                      snapshot.data?.docs[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                    athorname: documentSnapshot['athorname'],
                                    bookname: documentSnapshot['bookname'],
                                    image: documentSnapshot['imagelink'],
                                    aboutbook: documentSnapshot['aboutbook'],
                                    publishyear:
                                        documentSnapshot['publishyear'],
                                    rating: documentSnapshot['rating'],
                                  )));
                    },
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: h * 0.03),
                        child: getcontaniare(
                            context: context,
                            name: documentSnapshot['athorname'],
                            rating: documentSnapshot['rating'],
                            image: documentSnapshot['imagelink'],
                            aboutbook: documentSnapshot['aboutbook']),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
