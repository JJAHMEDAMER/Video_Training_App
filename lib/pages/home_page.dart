import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:video_training_app/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            // 1st Row Title Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppColor.homePageTitle,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: AppColor.homePageIcons,
                      size: 16,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.calendar_today_outlined,
                      color: AppColor.homePageIcons,
                      size: 16,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: AppColor.homePageIcons,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),

            // 2nd Row Your program
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your program',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColor.homePageSubtitle,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.homePageDetail,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColor.homePageIcons,
                      size: 14,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10),

            // 3rd Row Card
            Container(
              padding: EdgeInsets.all(15),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      AppColor.gradientFirst,
                      AppColor.gradientSecond,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 5,
                        color: AppColor.gradientFirst.withOpacity(0.5))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Next workout',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColor.homePageContainerTextSmall,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Legs Toning and Glutes Worout',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColor.homePageContainerTextBig,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 16,
                            color: AppColor.homePageContainerTextSmall,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '60 min',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColor.homePageContainerTextSmall,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 3,
                                color: AppColor.gradientFirst.withOpacity(0.6),
                              ),
                            ]),
                        child: Icon(
                          Icons.play_circle_fill,
                          color: AppColor.homePageContainerTextSmall,
                          size: 42,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
