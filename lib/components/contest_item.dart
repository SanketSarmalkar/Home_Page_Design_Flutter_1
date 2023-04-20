import 'package:flutter/material.dart';

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
                      child: Padding(
                        padding: EdgeInsets.all(height * 0.007),
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
              Container(
                width: width * 0.7,
                height: height * 0.05,
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
