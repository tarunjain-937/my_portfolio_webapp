import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_webapp/responsiveLayout/desktopLayout.dart';
import 'package:my_portfolio_webapp/responsiveLayout/mobileLayout.dart';
import 'package:my_portfolio_webapp/responsiveLayout/tabletLayout.dart';



class responsiveLayout extends StatelessWidget {
  const responsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
      if(constraints.maxWidth <530){
        return ScreenUtilInit(builder: (context, child) {return mobileLayout();},
            designSize: const Size(360,780));}
        if(constraints.maxWidth <1000){return tabletLayout();}
       return desktopLayout();
    },);
  }
}
