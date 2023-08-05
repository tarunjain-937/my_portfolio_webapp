import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Widget expertiesSectionMobile = Padding(
  padding: const EdgeInsets.all(6.0),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Card(
        elevation: 10.h,
        shadowColor: Colors.black,
        child: Container(
          width:  double.infinity,
          decoration: BoxDecoration(
            color:const Color.fromRGBO(221, 230, 237, 1),
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(width: 5.w,color: const Color.fromRGBO(7, 25, 82, 1)),
          ),
          
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Android Development",
                  style: TextStyle(fontSize: 26.sp,fontWeight: FontWeight.bold,color: const Color.fromRGBO(7, 25, 82, 1)),),
                SizedBox(height: 10.h),

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
      SizedBox(height: 10.h),
      Card(
        elevation: 10.h,
        shadowColor: Colors.black,
        child: Container(
          width:  double.infinity,
          decoration: BoxDecoration(
            color:const Color.fromRGBO(221, 230, 237, 1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 5.w,color: const Color.fromRGBO(7, 25, 82, 1)),
          ),

          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Column(

              children: [
                Text("Competitive Programming",
                  style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: Color.fromRGBO(7, 25, 82, 1)),),
                SizedBox(height: 10.h),
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
);


Widget skills({required String title, required String level, required int percentage,required double percentInDouble}){
  return Padding(
    padding: EdgeInsets.all(2.sp),
    child: Row(
      children: [
        CircularPercentIndicator(radius: 22.r,
          animation: true,
          animationDuration: 7500,
          percent: percentInDouble,
          lineWidth: 4.w,
          circularStrokeCap: CircularStrokeCap.round,
          center:  Text("$percentage %",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold),),
        ),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
           SizedBox(height: 8.h),
            Text(level,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),)
          ],
        )
      ],
    ),
  );
}
