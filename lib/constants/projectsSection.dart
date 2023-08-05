import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

/// =========================== All Project Tab controller================================
var allProjectControl=[
  projectElement(
      projectTitle: "Food Ordering app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","Firebase","Firebase Auth","Firebase CRUD"],
      projectImageSource: "lib/img8.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Social media-Chat app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","Firebase","Firebase Auth","Firebase CRUD","Rest Api"],
      projectImageSource: "lib/img7.png",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Tech News app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","News api"],
      projectImageSource: "lib/img5.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Weather forecast app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","weathers api"],
      projectImageSource: "lib/img4.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Education app UI",
      featuresList: ["Pixel Perfect"],
      skillUsedList: ["Flutter"],
      projectImageSource: "lib/img9.png",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Wallpaper app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","Pixels api"],
      projectImageSource: "lib/img6.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "whatsApp UI clone",
      featuresList: ["Responsive Web-App"],
      skillUsedList: ["Flutter"],
      projectImageSource: "lib/img1.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Tic Tac Toe game",
      featuresList: ["Responsive game"],
      skillUsedList: ["Flutter","Dart logic"],
      projectImageSource: "lib/img2.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Facebook UI clone",
      featuresList: ["Responsive game","Pixel Perfect"],
      skillUsedList: ["Flutter"],
      projectImageSource: "lib/img3.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),

];

/// =========================== UI Project Tab controller ================================
var uiProjectControl=[
  projectElement(
      projectTitle: "whatsApp UI clone",
      featuresList: ["Responsive Web-App"],
      skillUsedList: ["Flutter"],
      projectImageSource: "lib/img1.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Education app UI",
      featuresList: ["Pixel Perfect"],
      skillUsedList: ["Flutter"],
      projectImageSource: "lib/img9.png",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Tic Tac Toe game",
      featuresList: ["Responsive game"],
      skillUsedList: ["Flutter","Dart logic"],
      projectImageSource: "lib/img2.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Facebook UI clone",
      featuresList: ["Responsive game"],
      skillUsedList: ["Flutter"],
      projectImageSource: "lib/img3.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
];

/// =========================== API Project Tab controller================================
var apiProjectControl=[
  projectElement(
      projectTitle: "Weather forecast app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","weathers api"],
      projectImageSource: "lib/img4.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Tech News app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","News api"],
      projectImageSource: "lib/img5.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Wallpaper app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","Pixels api"],
      projectImageSource: "lib/img6.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
];

/// =========================== Advance Project Tab controller================================
var advanceProjectControl=[
  projectElement(
      projectTitle: "Food Ordering app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","Firebase","Firebase Auth","Firebase CRUD"],
      projectImageSource: "lib/img8.jpg",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
  projectElement(
      projectTitle: "Social media-Chat app",
      featuresList: ["Responsive App","Pixel Perfect"],
      skillUsedList: ["Flutter","Firebase","Firebase Auth","Firebase CRUD","Rest Api"],
      projectImageSource: "lib/img7.png",
      gitHubLink:"https://github.com/tarunjain-937/responsive_whatsapp_ui_clone"
  ),
];


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
                      var currentWidget = allProjectControl[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(221, 230, 237, 1),
                            border: Border.all(color: Colors.black,width: 2.w),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: currentWidget,
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
                        var currentWidget = uiProjectControl[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(221, 230, 237, 1),
                                border: Border.all(color: Colors.black,width: 2.w),
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            child: currentWidget,
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
                        var currentWidget = apiProjectControl[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(221, 230, 237, 1),
                                border: Border.all(color: Colors.black,width: 2.w),
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            child: currentWidget,
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
                        var currentWidget = advanceProjectControl[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(221, 230, 237, 1),
                                border: Border.all(color: Colors.black,width: 2.w),
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            child: currentWidget,
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

        SizedBox(height: 4.h,),
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