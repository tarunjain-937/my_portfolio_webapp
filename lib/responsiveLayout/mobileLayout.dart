/// if we assiging horizontal size we use (.w) notation, eg:- 24.w
/// similarly with vertical size we use (.h) notation, eg:- 24.h
/// for defining the text font size we use (.sp) notation, eg:- 24.sp
/// for defining circular radius use (.r) notation, eg:- 10.r

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_webapp/constants/constantWidgets.dart';
import 'package:my_portfolio_webapp/constants/expertiesSection.dart';
import 'package:my_portfolio_webapp/constants/projectsSection.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_controller.dart';

class mobileLayout extends StatefulWidget {
  const mobileLayout({Key? key}) : super(key: key);

  @override
  State<mobileLayout> createState() => _mobileLayoutState();
}

class _mobileLayoutState extends State<mobileLayout> {
  final double coverHeight = 230.h;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(child: buildTop(), margin:  EdgeInsets.only(bottom: 110.h),),

            Text("Tarun jain",
              style: TextStyle(fontWeight: FontWeight.w900,fontSize: 45.sp,letterSpacing: 1.w,color: Colors.black),),
            SizedBox(height: 8.h),
            Text("Mobile - WebApp Dev || Flutter Developer",
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.h,color: Colors.black,letterSpacing: 0.w),),
            Text("FrontEnd Mobile Developer",
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.h,color: Colors.black,letterSpacing: 0.w),),

            SizedBox(height: 10.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 26.r,
                  child: IconButton(
                      onPressed: () async{
                        /// ========GitHub URL===========
                        var url = Uri.parse("https://github.com/tarunjain-937?tab=repositories");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      icon: const FaIcon(FontAwesomeIcons.github,color: Colors.white,),tooltip: "GitHub",iconSize: 30.w,),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(radius: 26.r,
                  child: IconButton(
                    onPressed: () async{
                      /// ========Linkedin URL===========
                      var url = Uri.parse("https://www.linkedin.com/in/tarun-jain-bb7624278/");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: const FaIcon(FontAwesomeIcons.linkedin,color: Colors.white,),tooltip: "Linkedin",iconSize: 30.w,),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(radius: 26.r,
                  child: IconButton(
                    onPressed: () async{
                      /// ========Instagram URL===========
                      var url = Uri.parse("https://medium.com/@tarun9december");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: const FaIcon(FontAwesomeIcons.medium,color: Colors.white,),tooltip: "Medium (Blogs)",iconSize: 30.w,),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(radius: 26.r,
                  child: IconButton(
                    onPressed: () async{
                      /// ======== whats app URL===========
                      var url = Uri.parse("https://web.whatsapp.com/");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url,mode: LaunchMode.inAppWebView);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: const FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,),tooltip: "whats App",iconSize: 30.w,),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(radius: 26.r,
                  child: IconButton(
                    onPressed: (){},
                    icon: const FaIcon(FontAwesomeIcons.envelope,color: Colors.white,),tooltip: "Email",iconSize: 30.w,),
                ),
              ],
            ),

            SizedBox(height: 10.h),
            Divider(height: 2.h,color: Colors.grey,indent: 50.w,endIndent: 50.w),
            SizedBox(height: 10.h),

            Container(
              width: double.infinity,
              height: 65.h,
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(projectsLength.toString(), style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                          Text("Projects", style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text(DSAproblemsLength.toString(), style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                          Text(" DSA Problem Solved", style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(blogsLength.toString(), style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                          Text(" Blog published", style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10.h),
            Divider(height: 2.h,color: Colors.grey,indent: 50.w,endIndent: 50.w),
            SizedBox(height: 25.h),
            aboutSection,
            SizedBox(height: 15.h),
            experienceAndAvailableCard,
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text("Experties",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.bold,color: Color.fromRGBO(7, 25, 82, 1), letterSpacing: 1.w),),
            ),

            //==========Abilities section=========
            expertiesSectionMobile,
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.all(18),
              child: Text("Projects",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.bold,color: Color.fromRGBO(7, 25, 82, 1), letterSpacing: 1.w),),
            ),

            //===========Projects============
            mobileProjectSection,
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text("Certifications",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.bold,color: Color.fromRGBO(7, 25, 82, 1), letterSpacing: 1.w),),
            ),

            //===========Certifications========
            Certifications,

             SizedBox(height: 15.h),
             Padding(
              padding: EdgeInsets.all(18),
              child: Text("Get in Touch",style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.bold,color: Color.fromRGBO(7, 25, 82, 1), letterSpacing: 1.w),),
            ),
            //==============Get in Touch==========
            getInTouch,
            // bottom most of mobileLayout Screen
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }



  // buildTopMethod() method
  Widget buildTop(){
    return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          buildCoverImage(),
          Positioned(
              top: 100.h,
              child: buildProfileImage()),
        ]);
  }

  // buildCoverImage() method.
  Widget buildCoverImage() {
    return Container(
      color: Colors.grey,
      child: Image.asset(
        "lib/coverImage.webp",
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ),
    );
  }
  //buildProfieleImage() method
  Widget buildProfileImage() {
    return  CircleAvatar(
      radius: 115.r,
      backgroundImage: AssetImage(
        "lib/profileImage.jpg",
      ),
    );
  }
}
