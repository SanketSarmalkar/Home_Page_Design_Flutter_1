import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ContestItem extends StatefulWidget {
  const ContestItem({super.key});

  @override
  State<ContestItem> createState() => _ContestItemState();
}

class _ContestItemState extends State<ContestItem> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height * 0.02),
          ),
          elevation: 7.0,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(height * 0.02),
                        ),
                        color: Colors.green,
                      ),
                      width: width * 0.2,
                      height: height * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(height * 0.0072),
                            child: Column(
                              children: [
                                Text("Predict &",
                                    style: TextStyle(
                                      fontSize: width * 0.028,
                                      color: Colors.white,
                                    )),
                                Text("Win",
                                    style: TextStyle(
                                      fontSize: width * 0.028,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                          ClipPath(
                            clipper: ArrowClipper(height * 0.015, 0, Edge.LEFT),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.white,
                                        width: width * 0.2)),
                                color: Colors.white,
                              ),
                              width: width * 0.032,
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.02),
                    child: Text("Mega",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(height * 0.02),
                          topRight: Radius.circular(height * 0.02)),
                      color: Colors.grey[300],
                    ),
                    width: width * 0.2,
                    height: height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.007),
                      child: Column(
                        children: [
                          Text("Prize",
                              style: TextStyle(
                                fontSize: width * 0.028,
                                color: Colors.black,
                              )),
                          Text("₹ 100",
                              style: TextStyle(
                                fontSize: width * 0.028,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.09),
                    child: Column(
                      children: [
                        Text(
                          "Win",
                          style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "₹ 8,000",
                          style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: width * 0.05,
                    backgroundColor: Colors.deepPurple[900],
                    child: const Text("VS"),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * 0.04, left: width * 0.04),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.deepPurple),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: Text("50 spots filled",
                            style: TextStyle(
                              fontSize: width * 0.03,
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.05),
                        child: Text("100 spots",
                            style: TextStyle(
                              fontSize: width * 0.03,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: width * 0.7,
                height: height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(height * 0.02),
                    bottomRight: Radius.circular(height * 0.02),
                  ),
                  color: Colors.grey[300],
                ),
                child: Center(
                  child: Text("Predict Now",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
