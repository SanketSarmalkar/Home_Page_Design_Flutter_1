import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
  const Ad({super.key});

  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    double? height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.08,
      color: Colors.yellow[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: 3 * 3.14 / 2,
            child: const Icon(
              Icons.celebration,
              color: Colors.black,
              textDirection: TextDirection.rtl,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.02, right: width * 0.02),
            child: Text("REFER & EARN !",
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const Icon(
            Icons.celebration,
            color: Colors.black,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
