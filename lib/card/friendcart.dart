import 'package:flutter/material.dart';
import 'package:overlapping/colors/colors.dart';
import 'package:overlapping/container/customcontainer.dart';
import 'package:overlapping/friend.dart';

class FriendsCart extends StatelessWidget {
  const FriendsCart({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.10,
          width: size.width * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: primaryColor),
          child: const Icon(
            Icons.search_outlined,
            size: 40,
            color: backgroundColor,
          ),
        ),
        ClipPath(
          clipper: CustomContainerDesign(),
          child: Container(
            height: size.height * 0.36,
            decoration: BoxDecoration(
                color: darkBackgroundColor,
                borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Nearby Friends',
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: size.height * 0.15,
                      width: size.width * 0.55,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final nearby = friends[index];
                          return Column(
                            children: [
                              Container(
                                height: size.height * 0.13,
                                width: size.width * 0.16,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: const BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(50),
                                    bottom: Radius.circular(50),
                                  ),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.purple.shade300,
                                        child: Image.asset(
                                          'assets/${nearby['image']}',
                                        ),
                                      ),
                                      Text(
                                        nearby['name'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ]),
                              ),
                              const CircleAvatar(
                                radius: 7.5,
                                backgroundColor: primaryColor,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const Text(
                    'Recently Split',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: size.height * 0.08,
                    child: ListView.builder(
                      itemCount: friends.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final friend = friends[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 45),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.orange.shade300,
                                child: Image.asset('assets/${friend['image']}'),
                              ),
                              Text(
                                friend['name'],
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
