import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'projectsTAB.dart';

///============================= Mobile project section =========================
Widget mobileProjectSection = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    width: double.infinity,
    height: 500.h,
    child: DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Card(
              elevation: 8,
              shadowColor: Colors.black,
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    color: Colors.white
                ),
                child: TabBar(
                    indicator: BoxDecoration(
                      color: const Color.fromRGBO(7, 25, 82, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    ),
                    tabs:  const [
                      Tab(text: "All"),
                      Tab(text: "UI "),
                      Tab(text: "API "),
                      Tab(text: "Advance "),
                    ],
                    labelColor: Colors.white,
                    labelStyle:TextStyle(fontWeight: FontWeight.w800, fontSize: 12.sp),
                    unselectedLabelColor: Colors.black),
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// ============================ Tab 1(All projects) ==============================
                CarouselSlider.builder(
                    itemCount: allProjectControl.length,
                    options: CarouselOptions(
                        height: 500.h,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                    ),
                  itemBuilder: (context, index, realIndex) {
                    List<String> FeatureList = (allProjectControl[index]["featuresList"] as List).cast<String>();
                    List<String> SkillUdedList = (allProjectControl[index]["skillUsedList"] as List).cast<String>();
                    return Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(221, 230, 237, 1),
                            border: Border.all(color: Colors.black,width: 2.w),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: projectElement(
                            projectTitle: allProjectControl[index]["projectTitle"].toString(),
                            featuresList: FeatureList,
                            skillUsedList: SkillUdedList,
                            projectImageSource: allProjectControl[index]["projectImageSource"].toString(),
                            gitHubLink:allProjectControl[index]["gitHubLink"].toString() ),
                      ),
                    );
                  },
                ),
                    /// ============================ Tab 2 (UI projects)==============================
                    CarouselSlider.builder(
                      itemCount: uiProjectControl.length,
                      options: CarouselOptions(
                        height: 500.h,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                      ),
                      itemBuilder: (context, index, realIndex) {
                        List<String> FeatureList = (uiProjectControl[index]["featuresList"] as List).cast<String>();
                        List<String> SkillUdedList = (uiProjectControl[index]["skillUsedList"] as List).cast<String>();
                        return Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(221, 230, 237, 1),
                                border: Border.all(color: Colors.black,width: 2.w),
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            child: projectElement(
                                projectTitle: uiProjectControl[index]["projectTitle"].toString(),
                                featuresList: FeatureList,
                                skillUsedList: SkillUdedList,
                                projectImageSource: uiProjectControl[index]["projectImageSource"].toString(),
                                gitHubLink:uiProjectControl[index]["gitHubLink"].toString() ),
                          ),
                        );
                      },
                    ),
                    /// ============================ Tab 3 (API projects)==============================
                    CarouselSlider.builder(
                      itemCount: apiProjectControl.length,
                      options: CarouselOptions(
                        height: 500.h,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                      ),
                      itemBuilder: (context, index, realIndex) {
                        List<String> FeatureList = (apiProjectControl[index]["featuresList"] as List).cast<String>();
                        List<String> SkillUdedList = (apiProjectControl[index]["skillUsedList"] as List).cast<String>();
                        return Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(221, 230, 237, 1),
                                border: Border.all(color: Colors.black,width: 2.w),
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            child: projectElement(
                                projectTitle: apiProjectControl[index]["projectTitle"].toString(),
                                featuresList: FeatureList,
                                skillUsedList: SkillUdedList,
                                projectImageSource: apiProjectControl[index]["projectImageSource"].toString(),
                                gitHubLink:apiProjectControl[index]["gitHubLink"].toString() ),
                          ),
                        );
                      },
                    ),
                    /// ============================ Tab 4 (Advance projects)==============================
                    CarouselSlider.builder(
                      itemCount: advanceProjectControl.length,
                      options: CarouselOptions(
                        height: 500.h,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                      ),
                      itemBuilder: (context, index, realIndex) {
                        List<String> FeatureList = (advanceProjectControl[index]["featuresList"] as List).cast<String>();
                        List<String> SkillUdedList = (advanceProjectControl[index]["skillUsedList"] as List).cast<String>();
                        return Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(221, 230, 237, 1),
                                border: Border.all(color: Colors.black,width: 2.w),
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            child: projectElement(
                                projectTitle: advanceProjectControl[index]["projectTitle"].toString(),
                                featuresList: FeatureList,
                                skillUsedList: SkillUdedList,
                                projectImageSource: advanceProjectControl[index]["projectImageSource"].toString(),
                                gitHubLink:advanceProjectControl[index]["gitHubLink"].toString() ),
                          ),
                        );
                      },
                    ),
              ]),
            )],
        ),
      ),
    ),
  ),
);

Widget projectElement({
  required String projectTitle,
  required List<String> featuresList,
  required List<String> skillUsedList,
  required String projectImageSource,
  required String gitHubLink,
}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height:150.h,width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(image: AssetImage(projectImageSource),fit: BoxFit.cover)
            )),
        SizedBox(height: 8.h),
        Text(projectTitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.sp,color: Colors.black)),
        SizedBox(height: 6.h,),
        Container(
          width: double.infinity,
          height: 150,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Features :-",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18.sp,color: Colors.black)),
                SizedBox(height: 6.h,),
                for(int i=0;i<featuresList.length;i++)
                  Text("${i+1}} ${featuresList[i]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp,color: Colors.black)),
                SizedBox(height: 6.h,),
                Text("Skill Used :-",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18.sp,color: Colors.black)),
                SizedBox(height: 6.h,),
                for(int i=0;i<skillUsedList.length;i++)
                  Text("${i+1}} ${skillUsedList[i]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.sp,color: Colors.black)),
              ],
            ),
          ),
        ),

        Expanded(child: SizedBox(height: 4.h,)),
        ElevatedButton(
            onPressed: () async{
              /// ========Project GitHub URL===========
              var url = Uri.parse(gitHubLink);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GitHub Code",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
            Expanded(child: SizedBox()),
            FaIcon(FontAwesomeIcons.code,size: 20.sp,color: Colors.black,),
          ],
        ))
      ],
    ),
  );
}