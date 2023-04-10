import 'package:flutter/material.dart';

import '../../utils/comman.dart';

class DetailsPage extends StatefulWidget {
  String bookname;
  String athorname;
  String publishyear;
  String rating;
  String image;
  String aboutbook;
  DetailsPage({
    Key? key,
    required this.bookname,
    required this.athorname,
    required this.publishyear,
    required this.aboutbook,
    required this.rating,
    required this.image,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Browse",
              style: TextStyle(
                  fontSize: 30, color: Colors.black, fontFamily: "f1"),
            )),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(top: h * 0.1),
                        alignment: Alignment.center,
                        height: h * 0.7,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.black38, blurRadius: 4)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: h * 0.2),
                                child: gettext(
                                    size: 20,
                                    text: widget.bookname,
                                    color: Colors.black,
                                    space: 0.5)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.25, top: h * 0.01),
                              child: Row(
                                children: [
                                  if (widget.rating == '1') ...[
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.black26,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.black26,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.black26,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.black26,
                                      size: 25,
                                    ),
                                  ] else if (widget.rating == '2') ...[
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.black26,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.black26,
                                    ),
                                  ] else if (widget.rating == '3') ...[
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.black26,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.black26,
                                    ),
                                  ] else if (widget.rating == '4') ...[
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.black26,
                                    ),
                                  ] else if (widget.rating == '5') ...[
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 25,
                                      color: Colors.amber,
                                    ),
                                  ] else
                                    ...[],
                                  SizedBox(width: w * 0.03),
                                  gettext(
                                      text: widget.rating.toString(),
                                      color: Colors.black38)
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: w * 0.1, top: h * 0.02),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      gettext(
                                          text:
                                              "Author Name : ${widget.athorname}",
                                          color: Colors.black),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      gettext(
                                          text:
                                              "Publish Year Name : ${widget.publishyear}",
                                          color: Colors.black),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, right: 10),
                                    child: Text(widget.aboutbook,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        alignment: Alignment.center,
                        height: h * 0.28,
                        width: w * 0.32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black38, blurRadius: 4)
                          ],
                        ),
                        child: Container(
                          height: h * 0.3,
                          width: w * 0.27,
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              widget.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
