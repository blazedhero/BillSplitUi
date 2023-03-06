import 'package:flutter/material.dart';
import 'package:overlapping/card/billcard.dart';
import 'package:overlapping/card/friendcart.dart';
import 'package:overlapping/colors/colors.dart';
import 'package:overlapping/topbar/appbar.dart';

class BillSpliter extends StatelessWidget {
  const BillSpliter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: const [
              CustomAppBar(),
              SizedBox(
                height: 25,
              ),
              BillCardDesign(),
              SizedBox(
                height: 25,
              ),
              FriendsCart(),
            ],
          ),
        ),
      ),
    );
  }
}
