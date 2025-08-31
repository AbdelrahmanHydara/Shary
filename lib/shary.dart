import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/routing/my_router.dart';
import 'package:shary/core/routing/routes.dart';

class Shary extends StatelessWidget {

  const Shary({super.key,});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarColor: Colors.white,
    //   systemNavigationBarIconBrightness: Brightness.dark,
    // ));
    return ScreenUtilInit(
      designSize: const Size(380, 820),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.startAuthScreen,
        onGenerateRoute: MyRouter.generateRoute,
        theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: Colors.white,
        ),
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
      ),
    );
  }
}