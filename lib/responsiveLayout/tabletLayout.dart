import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_webapp/constants/constantWidgets.dart';
import 'package:my_portfolio_webapp/constants/projectsSection.dart';
import 'package:my_portfolio_webapp/constants/projectsTAB.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class tabletLayout extends StatefulWidget {
  const tabletLayout({Key? key}) : super(key: key);

  @override
  State<tabletLayout> createState() => _tabletLayoutState();
}

class _tabletLayoutState extends State<tabletLayout> {
  final double coverHeight = 230;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: buildTop(),
                margin: const EdgeInsets.only(bottom: 110),
              ),

              const Text(
                "Tarun jain",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 45,
                    letterSpacing: 1,
                    color: Colors.black),
              ),
              const SizedBox(height: 8),
              const Text(
                "Mobile - WebApp Dev || Flutter Developer",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                    letterSpacing: 0),
              ),
              const Text(
                "FrontEnd Mobile Developer",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                    letterSpacing: 0),
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 26,
                    child: IconButton(
                      onPressed: () async {
                        /// ========GitHub URL===========
                        var url = Uri.parse(
                            "https://github.com/tarunjain-937?tab=repositories");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                      tooltip: "GitHub",
                      iconSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 26,
                    child: IconButton(
                      onPressed: () async {
                        /// ========Linkedin URL===========
                        var url = Uri.parse(
                            "https://www.linkedin.com/in/tarun-jain-bb7624278/");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                      ),
                      tooltip: "Linkedin",
                      iconSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 26,
                    child: IconButton(
                      onPressed: () async {
                        /// ========Instagram URL===========
                        var url =
                            Uri.parse("https://medium.com/@tarun9december");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.medium,
                        color: Colors.white,
                      ),
                      tooltip: "Medium (Blogs)",
                      iconSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 26,
                    child: IconButton(
                      onPressed: () async {
                        /// ======== whats app URL===========
                        var url = Uri.parse("https://web.whatsapp.com/");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                      ),
                      tooltip: "whats App",
                      iconSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 26,
                    child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                      ),
                      tooltip: "Email",
                      iconSize: 30,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
              const Divider(
                  height: 2, color: Colors.grey, indent: 50, endIndent: 50),
              const SizedBox(height: 10),

              Container(
                width: double.infinity,
                height: 65,
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              projectsLength.toString(),
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            const Text(
                              "Projects",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              DSAproblemsLength.toString(),
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            const Text(
                              " DSA Problem Solved",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              blogsLength.toString(),
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            const Text(
                              " Blog published",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),
              const Divider(
                  height: 2, color: Colors.grey, indent: 50, endIndent: 50),
              const SizedBox(height: 25),

              /// ===================== About Section =============================
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(
                                  top: 38, bottom: 18, left: 18, right: 18),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(
                                    221, 230, 237, 1), //rgb(221, 230, 237)
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                about,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                    color: Colors.black),
                              )),
                          Positioned(
                            top: -20,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(39, 55, 77, 1),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text("About Me",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      letterSpacing: 2)), // rgb(39, 55, 77)
                            ),
                          )
                        ]),
                    const SizedBox(height: 10),
                    Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(221, 230, 237, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          aboutInShort,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.black),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              /// ===================== Experience and Available Section =============================
              Container(
                height: 120,
                width: double.infinity,
                child:   FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:const Color.fromRGBO(221, 230, 237, 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.graduationCap,size: 45),
                              Text("Experience",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 26),),
                              Text("1+ Year Learning",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 20),)
                            ],
                          ),
                        ),

                        SizedBox(width: 20),
                        Container(
                          width: 200,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:const Color.fromRGBO(221, 230, 237, 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              FaIcon(FontAwesomeIcons.headphonesAlt,size: 45),
                              Text("Available",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 26),),
                              Text("Online 24/7",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 20),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Experties",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(7, 25, 82, 1),
                      letterSpacing: 1),
                ),
              ),

              /// ===================== Experties Section =============================
              Padding(
                padding: const EdgeInsets.all(6.0),
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: Container(
                        width:  double.infinity,
                        decoration: BoxDecoration(
                          color:const Color.fromRGBO(221, 230, 237, 1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 5,color: const Color.fromRGBO(7, 25, 82, 1)),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Android Development",
                                style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: const Color.fromRGBO(7, 25, 82, 1)),),
                              SizedBox(height: 10),

                              Row(
                                children: [
                                  Expanded(
                                    child: Container(

                                      child: skills(title: "Flutter", level: "Advance", percentage: 90,percentInDouble: 0.9 ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: skills(title: "Dart", level: "Advance", percentage: 80,percentInDouble: 0.8),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(

                                      child: skills(title: "GetX", level: "Intermediate", percentage: 70,percentInDouble: 0.7 ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: skills(title: "FireBase", level: "Intermediate", percentage: 70,percentInDouble: 0.7),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(

                                      child: skills(title: "Provider", level: "Basic", percentage: 50,percentInDouble: 0.5 ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: skills(title: "RxDart", level: "Imtermediate", percentage: 70,percentInDouble: 0.7),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(

                                      child: skills(title: "RiverPod", level: "Basic", percentage: 50,percentInDouble: 0.5 ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: skills(title: "Rest API", level: "Intermediate", percentage: 70,percentInDouble: 0.7),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(

                                      child: skills(title: "Bloc", level: "Basic", percentage: 40,percentInDouble: 0.4 ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: skills(title: "Clean Architecture", level: "Basic", percentage: 50,percentInDouble: 0.5),
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Card(
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: Container(
                        width:  double.infinity,
                        decoration: BoxDecoration(
                          color:const Color.fromRGBO(221, 230, 237, 1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 5,color: const Color.fromRGBO(7, 25, 82, 1)),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Column(

                            children: [
                              Text("Competitive Programming",
                                style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Color.fromRGBO(7, 25, 82, 1)),),
                              SizedBox(height: 10),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: skills(title: "C/C++ (STL)", level: "Advance", percentage: 80,percentInDouble: 0.8 ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: skills(title: "Python", level: "Intermediate", percentage: 60,percentInDouble: 0.6),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(

                                          child: skills(title: "Java", level: "Basic", percentage: 40,percentInDouble: 0.4 ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: skills(title: "Problem Solving", level: "Intermediate", percentage: 50,percentInDouble: 0.5),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /// ===================== Experties Section END =============================

              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  "Projects",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(7, 25, 82, 1),
                      letterSpacing: 1),
                ),
              ),

              /// ===================== Projects Section =============================
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: DefaultTabController(
                    length: 4,
                    child: Scaffold(
                      body: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white),
                            child: const TabBar(
                                indicator: BoxDecoration(
                                  color: Color.fromRGBO(7, 25, 82, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                tabs: [
                                  Tab(text: "All"),
                                  Tab(text: "UI "),
                                  Tab(text: "API "),
                                  Tab(text: "Advance "),
                                ],
                                labelColor: Colors.white,
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 16),
                                unselectedLabelColor: Colors.black),
                          ),

                          Expanded(
                            child: TabBarView(
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  /// ======================= Tab 1===================
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromRGBO(
                                          221, 230, 237, 1),
                                    ),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                        itemCount: allProjectControl.length,
                                        physics: PageScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          List<String> FeatureList = (allProjectControl[index]["featuresList"] as List).cast<String>();
                                          List<String> SkillUdedList = (allProjectControl[index]["skillUsedList"] as List).cast<String>();
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height:200,width:300,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(width: 2,color: Colors.black)
                                              ),
                                              child: projectElement(
                                                projectTitle: allProjectControl[index]["projectTitle"].toString(),
                                                featuresList: FeatureList,
                                                skillUsedList: SkillUdedList,
                                                projectImageSource: allProjectControl[index]["projectImageSource"].toString(),
                                                gitHubLink:allProjectControl[index]["gitHubLink"].toString() ),),
                                          );
                                        },),
                                  ),
                                  /// ======================= Tab 2===================
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromRGBO(
                                          221, 230, 237, 1),
                                    ),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: uiProjectControl.length,
                                      physics: PageScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        List<String> FeatureList = (uiProjectControl[index]["featuresList"] as List).cast<String>();
                                        List<String> SkillUdedList = (uiProjectControl[index]["skillUsedList"] as List).cast<String>();
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height:200,width:300,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(width: 2,color: Colors.black)
                                            ),
                                            child: projectElement(
                                                projectTitle: uiProjectControl[index]["projectTitle"].toString(),
                                                featuresList: FeatureList,
                                                skillUsedList: SkillUdedList,
                                                projectImageSource: uiProjectControl[index]["projectImageSource"].toString(),
                                                gitHubLink: uiProjectControl[index]["gitHubLink"].toString() ),),
                                        );
                                      },),
                                  ),

                                  /// ======================= Tab 3===================
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromRGBO(
                                          221, 230, 237, 1),
                                    ),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: apiProjectControl.length,
                                      physics: PageScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        List<String> FeatureList = (apiProjectControl[index]["featuresList"] as List).cast<String>();
                                        List<String> SkillUdedList = (apiProjectControl[index]["skillUsedList"] as List).cast<String>();
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height:200,width:300,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(width: 2,color: Colors.black)
                                            ),
                                            child: projectElement(
                                                projectTitle: apiProjectControl[index]["projectTitle"].toString(),
                                                featuresList: FeatureList,
                                                skillUsedList: SkillUdedList,
                                                projectImageSource: apiProjectControl[index]["projectImageSource"].toString(),
                                                gitHubLink: apiProjectControl[index]["gitHubLink"].toString() ),),
                                        );
                                      },),
                                  ),

                                  /// ======================= Tab 4===================
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromRGBO(
                                          221, 230, 237, 1),
                                    ),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: advanceProjectControl.length,
                                      physics: PageScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        List<String> FeatureList = (advanceProjectControl[index]["featuresList"] as List).cast<String>();
                                        List<String> SkillUdedList = (advanceProjectControl[index]["skillUsedList"] as List).cast<String>();
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height:200,width:300,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(width: 2,color: Colors.black)
                                            ),
                                            child: projectElement(
                                                projectTitle: advanceProjectControl[index]["projectTitle"].toString(),
                                                featuresList: FeatureList,
                                                skillUsedList: SkillUdedList,
                                                projectImageSource: advanceProjectControl[index]["projectImageSource"].toString(),
                                                gitHubLink: advanceProjectControl[index]["gitHubLink"].toString() ),),
                                        );
                                      },),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Certifications",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(7, 25, 82, 1),
                      letterSpacing: 1),
                ),
              ),

              /// ===================== Certifications Section =============================
              Certifications,

              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  "Get in Touch",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(7, 25, 82, 1),
                      letterSpacing: 1),
                ),
              ),

              /// ===================== Get in touch Section =============================
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          margin: const EdgeInsets.all(8),
                          color: const Color.fromRGBO(7, 25, 82, 1),
                          elevation: 10,
                          shadowColor: Colors.grey[900],
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Linkedin",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Work profile",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange,
                                      fontSize: 22),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextButton(
                                    onPressed: () async {
                                      /// ========Linkedin URL===========
                                      var url = Uri.parse(
                                          "https://www.linkedin.com/in/tarun-jain-bb7624278/");
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Connect",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        SizedBox(width: 12),
                                        Icon(Icons.arrow_right,
                                            color: Colors.white, size: 28)
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
                          elevation: 10,
                          shadowColor: Colors.grey[900],
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Instagram",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Social profile",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange,
                                      fontSize: 22),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextButton(
                                    onPressed: () async {
                                      /// ========Instagram URL===========
                                      var url = Uri.parse(
                                          "https://www.instagram.com/tarunjain4518/");
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Connect",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Icon(
                                          Icons.arrow_right,
                                          color: Colors.white,
                                          size: 28,
                                        )
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
                          margin: const EdgeInsets.all(8),
                          color: const Color.fromRGBO(7, 25, 82, 1),
                          elevation: 10,
                          shadowColor: Colors.grey[900],
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.envelope,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Email",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "tarun9december@gmail.com",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.orange,
                                          fontSize: 16),
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Connect",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Icon(
                                          Icons.arrow_right,
                                          color: Colors.white,
                                          size: 28,
                                        )
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
                          elevation: 10,
                          shadowColor: Colors.grey[900],
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.whatsapp,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "whats App",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "+91  9179952512",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextButton(
                                    onPressed: () async {
                                      /// ======== whats app URL===========
                                      var url = Uri.parse(
                                          "https://web.whatsapp.com/");
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Connect",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        SizedBox(width: 12),
                                        Icon(
                                          Icons.arrow_right,
                                          color: Colors.white,
                                          size: 28,
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),

              /// ===================== bottom most of tabletLayout Screen Section =============================
              const SizedBox(height: 20),
            ],
          ),
        ));
  }

  // buildTopMethod() method
  Widget buildTop() {
    return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          buildCoverImage(),
          Positioned(top: 100, child: buildProfileImage()),
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
    return const CircleAvatar(
      radius: 115,
      backgroundImage: AssetImage(
        "lib/profileImage.jpg",
      ),
    );
  }


  Widget skills({required String title, required String level, required int percentage,required double percentInDouble}){
    return Padding(
      padding: EdgeInsets.all(2),
      child: Row(
        children: [
          CircularPercentIndicator(radius: 25,
            animation: true,
            animationDuration: 7500,
            percent: percentInDouble,
            lineWidth: 4,
            circularStrokeCap: CircularStrokeCap.round,
            center:  Text("$percentage %",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 8),
              Text(level,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
            ],
          )
        ],
      ),
    );
  }

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
          Container(height:150,width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(projectImageSource),fit: BoxFit.cover)
              )),
          SizedBox(height: 8),
          Text(projectTitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black)),
          SizedBox(height: 6,),
          Container(
            width: double.infinity,
            height: 150,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Features :-",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: Colors.black)),
                  SizedBox(height: 6,),
                  for(int i=0;i<featuresList.length;i++)
                    Text("${i+1}} ${featuresList[i]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                  SizedBox(height: 6,),
                  Text("Skill Used :-",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: Colors.black)),
                  SizedBox(height: 6,),
                  for(int i=0;i<skillUsedList.length;i++)
                    Text("${i+1}} ${skillUsedList[i]}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black)),
                ],
              ),
            ),
          ),

          Expanded(child: SizedBox(height: 4,)),
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
                  Text("GitHub Code",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Expanded(child: SizedBox()),
                  FaIcon(FontAwesomeIcons.code,size: 20,color: Colors.black,),
                ],
              ))
        ],
      ),
    );
  }
}