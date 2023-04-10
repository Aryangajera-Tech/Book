import 'package:cloud_firestore/cloud_firestore.dart';

class BookDatabase {
  static CollectionReference firestore =
      FirebaseFirestore.instance.collection("Book");
  static Future<void> adddata(
      {required String athorname,
      required String imagelink,
      required String aboutbook,
      required String bookname,
      required String rating,
      required String publishyear}) async {
    DocumentReference document = firestore.doc();
    Map<String, dynamic> data = {
      'athorname': athorname,
      'bookname': bookname,
      'imagelink': imagelink,
      'aboutbook': aboutbook,
      'rating': rating,
      'publishyear': publishyear
    };
    await document.set(data);
  }
}
