
import 'package:flutter/material.dart';
import 'package:singin/sign_in_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        inputDecorationTheme: _inputThemedesign(),
        textTheme: _TextStyleThemeDesign(),
        elevatedButtonTheme: ElevatedButtonThemeData(
        style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 5,
                  fixedSize:Size(500, 50),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(25))
                  )
                ),
        )
      ),
      home: const SignInScreen(),
    );
  }
// -----------------Text theme Style-------------
  TextTheme _TextStyleThemeDesign() {
    return TextTheme(
        bodyLarge: TextStyle(
           fontSize: 20, 
          fontWeight:FontWeight.bold,
          color: Colors.white
        ),

         bodySmall: TextStyle(
           fontSize: 15, 
          color: Colors.white
        )
      );
  }
// -------------Input Field desing---------------------
  InputDecorationTheme _inputThemedesign() {
    return InputDecorationTheme(

                border: OutlineInputBorder(
                
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(15))

                ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.red)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.red),
                
              )
              );
  }
}