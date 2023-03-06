import 'package:flutter/material.dart';
import 'package:overlapping/colors/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Test',
              style: TextStyle(
                color: primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Bill UI',
              style: TextStyle(
                color: primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            )
          ],
        ),
        Container(
          height: size.height * 0.095,
          width: size.width * 0.18,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1.5, color: Colors.white12)),
          child: Column(children: [
            Container(
              height: size.height * 0.06,
              width: size.width,
              decoration: const BoxDecoration(
                  color: darkBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Image.asset('assets/profile.png'),
            ),
            Container(
              height: size.height * 0.03,
              decoration: const BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              alignment: Alignment.center,
              child: const Text(
                'Monu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ]),
        )
      ],
    );
  }
}
