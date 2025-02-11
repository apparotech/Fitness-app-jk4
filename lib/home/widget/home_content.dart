import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/data_constants.dart';
import 'package:dell_project/core/const/path_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:dell_project/home/widget/home_exercises_card.dart';
import 'package:dell_project/home/widget/home_statistics.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,

}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
       color: ColorConstants.homeBackgroundColor,
       height: double.infinity,
       width: double.infinity,
       child: _createHomeBody(context),
     );
  }

  Widget _createHomeBody(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          _createProfileData(context),
          const SizedBox(height: 35),
          HomeStatistics(),
          const SizedBox(height: 30),
          _createExercisesList(context),

          const SizedBox(height: 25,),
          _createProgress(),

        ],
      ),
    );
  }

  Widget _createProfileData(BuildContext context) {
    return Padding(

        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),

                ),

                const SizedBox(
                  height: 2,
                ),
                Text(
                  TextConstants.checkActivity,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ],
            ),

          ],
        ),
    );
  }
  Widget  _createExercisesList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            TextConstants.discoverWorkouts,
            style: TextStyle(
              color:  ColorConstants.textBlack,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        const SizedBox(height: 15,),
        Container(

          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 20,
              ),

            ],
          ),
        )
      ],
    );
  }
  Widget _createProgress() {
    return Container(
      width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.white,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.textBlack.withOpacity(0.12),
            blurRadius: 5.0,
            spreadRadius: 1.1,
          ),
        ],
      ),
      child: Row(
        children: [
          Image(image: AssetImage(
            PathConstants.progress,
          ),
          ),
          SizedBox(
            width: 20,

          ),
          Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextConstants.keepProgress,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  const SizedBox(height: 3,),
                  Text(
                    TextConstants.profileSuccessful,
                    style: TextStyle(
                      fontSize: 16
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}