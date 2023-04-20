import 'package:flutter/material.dart';
import 'package:oxfin/components/leader_board_list.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    double? height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(0.04 * width),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('LEADERBOARD',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.04,
                  )),
              Container(
                height: height * 0.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.2),
                  border: Border.all(
                      color: Colors.blue[900]!, width: width * 0.004),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text("Veiw All",
                      style: TextStyle(
                        fontSize: width * 0.03,
                        color: Colors.blue[900],
                      )),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(height * 0.02),
            color: Colors.grey[300],
          ),
          child: const LeaderBoardList(),
        )
      ],
    );
  }
}
