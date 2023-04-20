import 'package:flutter/material.dart';
import 'leader_board_item.dart';

class LeaderBoardList extends StatefulWidget {
  const LeaderBoardList({super.key});

  @override
  State<LeaderBoardList> createState() => _LeaderBoardListState();
}

class _LeaderBoardListState extends State<LeaderBoardList> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(height * 0.015),
      height: height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return const LeaderBoardItem(item: 1);
          }),
    );
  }
}
