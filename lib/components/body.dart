import 'package:flutter/material.dart';
import 'leader_board.dart';
import 'upcoming_contests.dart';
import 'ad.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //double? height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        UpcomingContests(),
        Ad(),
        LeaderBoard(),
      ],
    );
  }
}
