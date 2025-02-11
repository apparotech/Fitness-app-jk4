import 'package:dell_project/common_widgets/fitness_button.dart';
import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:dell_project/reminder/widget/reminder_content.dart';
import 'package:flutter/material.dart';

class ReminderPage extends StatelessWidget {
  const ReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReminderContent(),
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          TextConstants.reminder,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new,
             color: ColorConstants.primaryColor,)),
      ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
          padding:EdgeInsets.symmetric(horizontal: 20),
        child: FitnessButton(
            title: TextConstants.save,
            onTap: () {}
        ),
      ),
    );
  }
}
