import 'package:flutter/material.dart';

class LeaderBoardItem extends StatefulWidget {
  final int item;
  const LeaderBoardItem({Key? key, required this.item}) : super(key: key);

  @override
  State<LeaderBoardItem> createState() => _LeaderBoardItemState();
}

class _LeaderBoardItemState extends State<LeaderBoardItem> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: width * 0.05,
        bottom: width * 0.05,
        right: width * 0.014,
        left: width * 0.014,
      ),
      child: Container(
        width: width * 0.18,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Rank ${widget.item + 1}",
                style: TextStyle(
                  fontSize: width * 0.03,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: height * 0.15,
              child: Stack(
                children: [
                  Positioned(
                    top: height * 0.05,
                    child: Container(
                      height: height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(0, 3)),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.01),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: Text(
                                  "User ${widget.item + 1}",
                                  style: TextStyle(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple[900],
                                  ),
                                ),
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total Winnings",
                                      style: TextStyle(
                                        fontSize: width * 0.02,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text("₹ 100,000",
                                        style: TextStyle(
                                          fontSize: width * 0.02,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        )),
                                  ])
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.08,
                    right: width * 0.045,
                    child: CircleAvatar(
                      radius: width * 0.05,
                      backgroundColor: Colors.deepPurple[900],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
