import 'package:book/Function.dart';
import 'package:book/utils/comman.dart';
import 'package:flutter/material.dart';

class Addbook extends StatefulWidget {
  Addbook({Key? key}) : super(key: key);

  @override
  State<Addbook> createState() => _AddbookState();
}

class _AddbookState extends State<Addbook> {
  TextEditingController name = TextEditingController();
  TextEditingController imagelink = TextEditingController();
  TextEditingController authorname = TextEditingController();
  TextEditingController aboutbook = TextEditingController();
  TextEditingController rating = TextEditingController();
  TextEditingController publishyear = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: w * 0.05),
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            )
          ],
          title: Text(
            "Add Book",
            style:
                TextStyle(fontSize: 20, color: Colors.black, fontFamily: "f1"),
          )),
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.05),
          child: ListView(physics: BouncingScrollPhysics(), children: [
            gettextfild(
              hinttext: "Name",
              prifixicon: Icon(Icons.import_contacts),
              controller: name,
            ),
            SizedBox(
              height: h * 0.03,
            ),
            gettextfild(
              hinttext: "Image link",
              prifixicon: Icon(Icons.photo),
              controller: imagelink,
            ),
            SizedBox(
              height: h * 0.03,
            ),
            gettextfild(
              hinttext: "Author Name",
              prifixicon: Icon(Icons.account_circle),
              controller: authorname,
            ),
            SizedBox(
              height: h * 0.03,
            ),
            gettextfild(
                hinttext: "About Book",
                prifixicon: Icon(Icons.menu_book),
                controller: aboutbook,
                maxline: 4),
            SizedBox(
              height: h * 0.03,
            ),
            gettextfild(
              hinttext: "Rating",
              keyboard: TextInputType.number,
              prifixicon: Icon(Icons.star),
              controller: rating,
            ),
            SizedBox(
              height: h * 0.03,
            ),
            gettextfild(
                hinttext: "Publish Year",
                prifixicon: Icon(Icons.date_range),
                controller: publishyear),
            SizedBox(
              height: h * 0.05,
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: h * 0.07,
                width: w * 0.01,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: gettext(text: "Finish", color: Colors.white),
              ),
              onTap: () {
                BookDatabase.adddata(
                    athorname: authorname.text,
                    bookname: name.text,
                    imagelink: imagelink.text,
                    aboutbook: aboutbook.text,
                    rating: rating.text,
                    publishyear: publishyear.text);
                setState(() {});
                Navigator.pop(context);
              },
            )
          ]),
        ),
      ),
    );
  }
}
