import 'package:flutter/material.dart';
import 'package:overlapping/colors/colors.dart';
import 'package:overlapping/friend.dart';

class BillCardDesign extends StatelessWidget {
  const BillCardDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: size.height * 0.26,
              width: size.width,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Total Bill is',
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$ 75.86',
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                      width: size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: backgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: const Text(
                          'Split Now',
                          style: TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * 0.11,
              decoration: BoxDecoration(
                color: darkBackgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: backgroundColor,
                  child: Icon(
                    Icons.add_circle_outlined,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Your previous split was',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '\$656',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
        Positioned(
          right: 30,
          top: 20,
          child: Column(children: [
            const Text(
              'Split with',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: backgroundColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * 0.26,
              width: size.width * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                SizedBox(
                  height: size.height * 0.15,
                  child: ListView.builder(
                    itemCount: friends.length,
                    itemBuilder: (context, index) {
                      final friend = friends[index];
                      return Align(
                        heightFactor: 0.7,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.red.shade200,
                            child: Image.asset(
                              'assets/${friend['image']}',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.orange.shade200,
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ]),
            ),
          ]),
        ),
      ],
    );
  }
}
