import 'package:flutter/material.dart';
import 'contest_lists.dart';

class UpcomingContests extends StatefulWidget {
  const UpcomingContests({super.key});

  @override
  State<UpcomingContests> createState() => _UpcomingContestsState();
}

class _UpcomingContestsState extends State<UpcomingContests> {
  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    double? height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: height * 0.03,
        ),
        Padding(
          padding: EdgeInsets.all(0.04 * width),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('UPCOMING CONTESTS',
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
        const ContestList(),
      ],
    );
  }
}
