import 'package:flutter/material.dart';

class LeaderBoardItem extends StatefulWidget {
  final item;
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
        right: width * 0.02,
        left: width * 0.02,
      ),
      child: Container(
        width: width * 0.16,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3))
            ]),
        child: Center(child: Text('Item ${widget.item}')),
      ),
    );
  }
}
