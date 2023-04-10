import 'package:flutter/material.dart';

TextField gettextfild(
    {required String hinttext,
    required Icon prifixicon,
    TextInputType? keyboard,
    Icon? sufixicon,
    int? maxline,
    required TextEditingController controller}) {
  return TextField(
    controller: controller,
    keyboardType: keyboard,
    maxLines: maxline,
    cursorColor: Colors.black,
    decoration: InputDecoration(
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black38,
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        border: OutlineInputBorder(),
        hintStyle: TextStyle(
            fontSize: 18,
            fontFamily: 'f1',
            color: Colors.black38,
            fontWeight: FontWeight.bold),
        prefixIcon: prifixicon),
  );
}

Text gettext(
    {double? space, required String text, required Color color, double? size}) {
  return Text(text,
      textAlign: TextAlign.justify,
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'f1',
        letterSpacing: space,
        color: color,
        fontWeight: FontWeight.bold,
      ));
}

Widget getcontaniare(
    {required BuildContext context,
    required String name,
    required String rating,
    required String image,
    required String aboutbook}) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;
  return Container(
    height: h * 0.35,
    width: w * 0.9,
    child: Stack(alignment: Alignment.centerLeft, children: [
      Container(
          // alignment: Alignment.topCenter,
          margin: EdgeInsets.only(left: w * 0.12),
          height: h * 0.35,
          width: w * 0.8,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 4)],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: w * 0.2, top: h * 0.05),
                  child: gettext(
                      size: 20, text: name, color: Colors.black, space: 0.5)),
              Padding(
                padding: EdgeInsets.only(left: w * 0.25, top: h * 0.01),
                child: Row(
                  children: [
                    if (rating == '1') ...[
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Icon(Icons.star, size: 25, color: Colors.black26),
                      Icon(Icons.star, size: 25, color: Colors.black26),
                      Icon(Icons.star, size: 25, color: Colors.black26),
                      Icon(Icons.star, size: 25, color: Colors.black26),
                    ] else if (rating == '2') ...[
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
                      Icon(Icons.star, size: 25, color: Colors.black26),
                      Icon(Icons.star, size: 25, color: Colors.black26),
                      Icon(Icons.star, size: 25, color: Colors.black26),
                    ] else if (rating == '3') ...[
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
                      Icon(Icons.star, size: 25, color: Colors.black26),
                      Icon(Icons.star, size: 25, color: Colors.black26),
                    ] else if (rating == '4') ...[
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
                      Icon(Icons.star, size: 25, color: Colors.black26),
                    ] else if (rating == '5') ...[
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
                    gettext(text: rating.toString(), color: Colors.black38)
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: w * 0.2, top: h * 0.02),
                  height: h * 0.18,
                  width: w * 0.5,
                  child: gettext(text: aboutbook, color: Colors.black38))
            ],
          )),
      Container(
          alignment: Alignment.center,
          height: h * 0.28,
          width: w * 0.32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 4)],
          ),
          child: Container(
            height: h * 0.3,
            width: w * 0.27,
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ))
    ]),
  );
}
