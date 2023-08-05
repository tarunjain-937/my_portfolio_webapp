import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_webapp/responsiveLayout/responisveLayout.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Portfolio website",
      debugShowCheckedModeBanner: false,
      home: responsiveLayout(),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return ScreenUtilInit(
//     builder: (context, child) {
//       return  const MaterialApp(
//         title: "My Portfolio website",
//         debugShowCheckedModeBanner: false,
//         home: responsiveLayout(),
//       );
//     },
//
//     /// ========= Put here the Figma screen size ================
//     designSize: const Size(360, 780),
//   );
// }