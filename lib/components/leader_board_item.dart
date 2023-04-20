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
    return Text(widget.item.toString());
  }
}
