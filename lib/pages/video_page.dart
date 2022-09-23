import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:video_training_app/utils/colors.dart';
import 'package:video_training_app/widgets/app_icons.dart';
import 'package:video_training_app/widgets/app_text.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List videoData = [];

  _jsonExtract() {
    DefaultAssetBundle.of(context)
        .loadString('json/videoinfo.json')
        .then((value) {
      return videoData = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _jsonExtract();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.gradientFirst,
              AppColor.gradientSecond,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            // 1st Container
            Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 20,
              ),
              child: Column(
                children: [
                  // 1st row icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIcon(varIcon: Icons.arrow_back_ios),
                      AppIcon(varIcon: Icons.info_outline)
                    ],
                  ),
                  SizedBox(height: 15),

                  // 2nd Row Text
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Legs Toning and Glutes Workout',
                          style: TextStyle(
                              color: AppColor.bigText,
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // 3rd Row Info Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColor.bigText.withOpacity(0.15),
                        ),
                        child: Row(
                          children: [
                            AppIcon(
                              varIcon: Icons.timer,
                              varSize: 14,
                            ),
                            Text(
                              ' 68 min',
                              style: TextStyle(
                                  color: AppColor.bigText,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColor.bigText.withOpacity(0.15),
                        ),
                        child: Row(
                          children: [
                            AppIcon(
                              varIcon: Icons.handyman,
                              varSize: 14,
                            ),
                            Text(
                              ' Resistant band, Kettlebell',
                              style: TextStyle(
                                  color: AppColor.bigText,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),

            // 2nd Container
            // Wrap with expanded to fill the possible space
            
          ],
        ),
      ),
    );
  }
}
