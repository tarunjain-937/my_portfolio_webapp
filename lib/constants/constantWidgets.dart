import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const int blogsLength = 0;
const int projectsLength = 9;
const int DSAproblemsLength = 54;

const double coverHeight = 180;

var appbar= AppBar(
  backgroundColor: const Color.fromRGBO(7, 25, 82, 1),
  title: InkWell(
    onTap: (){}, /// add link to resume here...
    child:  const Padding(
      padding:  EdgeInsets.all(12),
      child: Card(
        borderOnForeground: true,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(width: 5,color: Color.fromRGBO(255, 231, 160, 1))),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text("Resume",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        ),
      ),
    ),
  ),
);

//==============================================================================

String about="Hello there! I'm Tarun jain, "
    "a passionate Flutter developer with a knack for crafting delightful and intuitive"
    " mobile applications. My journey in the world of app development began with a curiosity "
    "for creating seamless user experiences, and since then, I've been hooked on Flutter's"
    " versatility and efficiency. With a keen eye for design and a commitment to writing "
    "clean and maintainable code, I take pride in turning ideas into reality. When I'm not"
    " busy coding, you'll find me exploring the latest trends in mobile development and "
    "sharing my knowledge through blogs and tutorials. Let's build something amazing together!";


String aboutInShort ="Passionate Flutter developer |"
    " Creating seamless mobile experiences | "
    "Clean code enthusiast | Love exploring trends.";

//===============================================================================

Widget aboutSection = Padding(
  padding:  EdgeInsets.all(15.sp),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(top: 38.h,bottom:18.h,left: 18.w,right: 18.w),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(221, 230, 237, 1),//rgb(221, 230, 237)
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(about,style:  TextStyle(fontWeight: FontWeight.w500,
                    fontSize:16.sp,
                    color: Colors.black),)),

            Positioned(
              top: -20.h,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(39, 55, 77, 1),
                    borderRadius: BorderRadius.circular(15.r)),
                child: Text("About Me",
                    style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold, color: Colors.white,letterSpacing: 2.w)),// rgb(39, 55, 77)
              ),
            )
          ]
      ),
      SizedBox(height: 10.h,),
      Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(221, 230, 237, 1),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(aboutInShort,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp, color: Colors.black),)),
    ],
  ),
) ;

//==============================================================================

Widget experienceAndAvailableCard = Container(
  height: 120.h,
  width: double.infinity,
  child:   FittedBox(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200.w,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color:const Color.fromRGBO(221, 230, 237, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.graduationCap,size: 40.sp),
                Text("Experience",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25.sp),),
                Text("1+ Year Learning",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 18.sp),)
              ],
            ),
          ),

          SizedBox(width: 20.w),
          Container(
            width: 200.w,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color:const Color.fromRGBO(221, 230, 237, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                FaIcon(FontAwesomeIcons.headphonesAlt,size: 40.sp),
                Text("Available",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25.sp),),
                Text("Online 24/7",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 18.sp),)
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);

//==============================================================================

Widget Certifications = SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:   Padding(
    padding:  EdgeInsets.all(15),
    child: Row(
      children: [
        Card(elevation: 10,shadowColor: Colors.grey[900],
          child: Container(
            height: 300,
            child: Image.asset("lib/certificate1.png",fit: BoxFit.cover),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 6,color: const Color.fromRGBO(7, 25, 82, 1),),
            ),
          ),
        ),
         SizedBox(width: 15,),
        Card(elevation: 10,shadowColor: Colors.grey[900],
          child: Container(
            height: 300,
            child: Image.asset("lib/certificate2.png",fit: BoxFit.cover),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 6,color: const Color.fromRGBO(7, 25, 82, 1),),
            ),
          ),
        ),
        SizedBox(width: 15),
        Card(elevation: 10,shadowColor: Colors.grey[900],
          child: Container(
            height: 300,
            child: Image.asset("lib/certificate3.png",fit: BoxFit.cover),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 6,color: const Color.fromRGBO(7, 25, 82, 1),),
            ),
          ),
        ),
      ],),
  ),
);

//==============================================================================

Widget getInTouch = Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Row(
      children: [
        Expanded(
          flex: 1,
          child: Card(
            margin: EdgeInsets.all(8.sp),
            color: const Color.fromRGBO(7, 25, 82, 1),
            elevation: 10.h,shadowColor: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.linkedin,color: Colors.white,size: 40.sp,),
                  SizedBox(height: 8.h,),
                  Text("Linkedin",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 30.sp),),
                  const SizedBox(height: 8,),
                  Text("Work profile",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.orange,fontSize: 22.sp),),
                  SizedBox(height: 8.h,),
                  TextButton(
                      onPressed: () async{
                        /// ========Linkedin URL===========
                        var url = Uri.parse("https://www.linkedin.com/in/tarun-jain-bb7624278/");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Row(
                    children: [
                      Text("Connect",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w900,color: Colors.white),),
                      SizedBox(width: 12.w),
                      Icon(Icons.arrow_right,color: Colors.white,size: 28.sp)
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            margin: EdgeInsets.all(8.sp),
            color: const Color.fromRGBO(7, 25, 82, 1),
            elevation: 10.h,shadowColor: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.instagram,color: Colors.white,size: 40.sp,),
                  SizedBox(height: 8.h,),
                  Text("Instagram",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 30.sp),),
                  SizedBox(height: 8.h,),
                  Text("Social profile",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.orange,fontSize: 22.sp),),
                  SizedBox(height: 8.h,),
                  TextButton(
                      onPressed:() async{
                        /// ========Instagram URL===========
                        var url = Uri.parse("https://www.instagram.com/tarunjain4518/");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Row(
                    children: [
                      Text("Connect",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w900,color: Colors.white),),
                      SizedBox(width: 12.w,),
                      Icon(Icons.arrow_right,color: Colors.white,size: 28.sp,)
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ],
    ),

    Row(
      children: [
        Expanded(
          flex: 1,
          child: Card(
            margin: EdgeInsets.all(8.sp),
            color: const Color.fromRGBO(7, 25, 82, 1),
            elevation: 10.h,shadowColor: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   FaIcon(FontAwesomeIcons.envelope,color: Colors.white,size: 40.sp,),
                  SizedBox(height: 8.h,),
                   Text("Email",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 30.sp),),
                  SizedBox(height: 8.h,),
                  FittedBox(fit: BoxFit.scaleDown,child: Text("tarun9december@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.orange,fontSize: 16.sp),)),
                  SizedBox(height: 8.h,),
                  TextButton(onPressed: (){}, child: Row(
                    children: [
                      Text("Connect",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w900,color: Colors.white),),
                      SizedBox(width: 12.w,),
                      Icon(Icons.arrow_right,color: Colors.white,size: 28.sp,)
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            margin: const EdgeInsets.all(8),
            color: const Color.fromRGBO(7, 25, 82, 1),
            elevation: 10.h,shadowColor: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,size: 40.sp,),
                   SizedBox(height: 8.h,),
                   Text("whats App",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 30.sp),),
                   SizedBox(height: 8.h,),
                   Text("+91  9179952512",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.orange,fontSize: 16.sp),),
                   SizedBox(height: 8.h,),
                  TextButton(
                      onPressed: () async{
                        /// ======== whats app URL===========
                        var url = Uri.parse("https://web.whatsapp.com/");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Row(
                    children: [
                      Text("Connect",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w900,color: Colors.white),),
                      SizedBox(width: 12.w),
                      Icon(Icons.arrow_right,color: Colors.white,size: 28.sp,)
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ],
    ),


    SizedBox(height: 12.h,),
  ],
);

//==============================================================================