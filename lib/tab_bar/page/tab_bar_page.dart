import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/path_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _createdBottomTabBar(context);
  }

  Widget _createdBottomTabBar(BuildContext context) {
      return BottomNavigationBar(
        fixedColor: ColorConstants.primaryColor,
          items: [
            BottomNavigationBarItem(
                icon: Image(
                    image: AssetImage(PathConstants.home)
                ),
              label: TextConstants.homeIcon,
            ),

            BottomNavigationBarItem(
                icon: Image(
                    image: AssetImage(PathConstants.workouts),
                ),
              label: TextConstants.workoutsIcon,
            ),

            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(PathConstants.settings),
                //color: bloc.currentIndex == 2 ? ColorConstants.primaryColor : null,
              ),
              label: TextConstants.settingsIcon,
            ),

          ]
      );
  }
}
