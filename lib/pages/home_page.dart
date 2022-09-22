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
          ],
        ),
      ),
    );
  }
}
