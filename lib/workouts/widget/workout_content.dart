import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/data_constants.dart';
import 'package:flutter/material.dart';

class WorkoutContent extends StatelessWidget {
  const WorkoutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.white,
      height: double.infinity,
      width: double.infinity,
      child: _createHomeBody(context),
    );


  }

  Widget _createHomeBody(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 20.0),
                  
                  child: Text('Workouts',
                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                    child: ListView(

                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
