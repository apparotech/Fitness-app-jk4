import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ReminderContent extends StatelessWidget {
  const ReminderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: ColorConstants.white,
      child: _createDetailedReminder(context),

    );

  }

  Widget _createDetailedReminder(BuildContext context) {
    return Container(
       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _createSelectTime(),
              const SizedBox(height: 20,),
              _createTimePicker(context),
              const SizedBox(height: 20,),
              _createRepeating(),
              const SizedBox(height: 15),
              _createDayRepeating(context),
            ],
          )
        ],
      ),
    );
  }

  Widget _createSelectTime() {
    return Text(
      TextConstants.selectTime,

      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),
    );
  }

  Widget _createTimePicker(BuildContext context) {
    return Container(
       height: 250,
        child: CupertinoDatePicker(
             mode: CupertinoDatePickerMode.time,
            onDateTimeChanged: (DateTime value) {

            }
        ),


    );

  }

  Widget _createRepeating() {
    return Text(TextConstants.repeating,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600));
  }

  Widget _createDayRepeating(BuildContext context) {
      return Wrap(
        spacing: 10,
        runSpacing: 15,
         children: [

         ],
      );
  }
}

class RepeatingDay  extends StatelessWidget  {
   final String title;
    final bool isSelected;
     final VoidCallback onTap;


   RepeatingDay({
     required this.title,
     required this.isSelected,
     required this.onTap,
   });


   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        decoration: BoxDecoration(
          color: isSelected
              ? ColorConstants.primaryColor
              : ColorConstants.grey.withOpacity(0.18),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: isSelected ? ColorConstants.white : ColorConstants.grey,
          ),
        ),
      ),
    );
  }
}
