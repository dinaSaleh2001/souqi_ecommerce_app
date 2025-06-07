import 'package:ecommerceapp/SplashScreen.dart';
import 'package:ecommerceapp/provider/cart_provider.dart';
import 'package:ecommerceapp/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';

void main() {
runApp(
  DevicePreview(
    builder: (context) => const MyApp(),
  ),
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CartProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => FavoriteProvider(),
          )
        ],
        child: MaterialApp(
          useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.mulishTextTheme(),
          ),
         home: const SplashScreen(),
        ),
      );
}
