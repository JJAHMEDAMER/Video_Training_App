import 'package:flutter/material.dart';
import 'package:video_training_app/utils/colors.dart';
import 'package:video_training_app/widgets/app_icons.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 20,
        ),
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
        child: Column(children: [

          // 1st row icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(varIcon: Icons.arrow_back_ios),
              AppIcon(varIcon: Icons.info_outline)
            ],
          ),
          SizedBox(height: 15),

          // 2nd Row
          
        
        ]),
      ),
    );
  }
}
