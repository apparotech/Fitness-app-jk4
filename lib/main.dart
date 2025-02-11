import 'package:dell_project/Home-Page/HomePage.dart';
import 'package:dell_project/Login_Page/Login_page.dart';
import 'package:dell_project/change_password/change_password_page.dart';
import 'package:dell_project/edit_account/edit_account_screen.dart';
import 'package:dell_project/home/bloc/demo.dart';
import 'package:dell_project/home/bloc/demo_two.dart';
import 'package:dell_project/onboarding/page/onboarding_page.dart';
import 'package:dell_project/onboarding/widget/onboarding_content.dart';
import 'package:dell_project/onboarding/widget/onboarding_tile.dart';
import 'package:dell_project/reminder/page/reminder_page.dart';
import 'package:dell_project/sign_in/page/sign_in_page.dart';
import 'package:dell_project/sign_up/page/sign_up_page.dart';
import 'package:dell_project/tab_bar/page/tab_bar_page.dart';
import 'package:dell_project/workouts/page/workouts_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  ReminderPage(),
    );
  }
}




