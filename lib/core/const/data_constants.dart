import 'package:dell_project/core/const/path_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:dell_project/onboarding/widget/onboarding_tile.dart';

class DataConstants {

  // Onboarding
   static final onboardingTiles =[
     OnboardingTile(
       title: TextConstants.onboardingTitle,
       mainText: TextConstants.onboarding1Description,
       imagePath: PathConstants.onboarding1,
     ),

     OnboardingTile(
       title: TextConstants.onboarding2Title,
       mainText: TextConstants.onboarding2Description,
       imagePath: PathConstants.onboarding2,
     ),

     OnboardingTile(
       title: TextConstants.onboarding3Title,
       mainText: TextConstants.onboarding3Description,
       imagePath: PathConstants.onboarding3,
     )
   ];
}