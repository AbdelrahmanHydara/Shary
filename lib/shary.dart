import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/routing/my_router.dart';
import 'package:shary/core/routing/routes.dart';


class Shary extends StatelessWidget {

  const Shary({super.key,});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return ScreenUtilInit(
      designSize: const Size(380, 820),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: MyRouter.generateRoute,
        theme: ThemeData(
          fontFamily: 'Cairo',
          // colorScheme: ColorScheme.fromSeed(
          //   seedColor: AppColors.primaryColor,
          // ),
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