import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    double? height = MediaQuery.of(context).size.height;
    double? width = MediaQuery.of(context).size.width;
    // return BottomNavigationBar(
    //   items: const [
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.home,
    //         color: Colors.black,
    //       ),
    //       label: 'Home',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.search,
    //         color: Colors.black,
    //       ),
    //       label: 'Search',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.card_giftcard,
    //         color: Colors.black,
    //       ),
    //       label: 'Reward',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         Icons.wallet,
    //         color: Colors.black,
    //       ),
    //       label: 'Wallet',
    //     ),
    //   ],
    // );
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.02, left: 20, right: 20),
      child: Container(
        height: height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width * 0.1),
          border: Border.all(color: Colors.grey[300]!, width: width * 0.005),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.01, right: width * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  shape: const CircleBorder(
                    side: BorderSide.none,
                  ),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                        size: height * 0.03,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.01,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )),
              MaterialButton(
                  shape: const CircleBorder(
                    side: BorderSide.none,
                  ),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                        size: height * 0.03,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.01,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )),
              MaterialButton(
                  shape: const CircleBorder(
                    side: BorderSide.none,
                  ),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.card_giftcard,
                        color: Colors.black,
                        size: height * 0.03,
                      ),
                      Text(
                        'Reward',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.01,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )),
              MaterialButton(
                  shape: const CircleBorder(
                    side: BorderSide.none,
                  ),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wallet_giftcard,
                        color: Colors.black,
                        size: height * 0.03,
                      ),
                      Text(
                        'Wallet',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.01,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
