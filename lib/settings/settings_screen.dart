import 'package:dell_project/common_widgets/common_widget.dart';
import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/path_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:dell_project/edit_account/edit_account_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  String?  photo = PathConstants.profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _settingsContent(context),);
  }


  Widget _settingsContent(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),

            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(PathConstants.profile),
                        radius: 60,

                        child: CircleAvatar(
                         backgroundColor: Colors.purple,

                          radius: 20,
                        ),
                      ),




                    ),

                    TextButton(
                        onPressed: ()  {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => EditAccountScreen()));

                        },
                        style: TextButton.styleFrom(shape: CircleBorder(), backgroundColor: ColorConstants.primaryColor.withOpacity(0.16)),
                        child: Icon(Icons.edit, color: ColorConstants.primaryColor)),
                  ],
                ),

                SizedBox(height: 15),
                Text(
                  'Raj', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15,),
                SettingsContainer(
                    child: Text(
                        TextConstants.reminder, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)

                    ),
                  withArrow: true,

                  onTap: () {

                  },
                ),

                SettingsContainer(
                    child: Text(TextConstants.rateUsOn,

                      style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500
                      ),
                    ),

                  onTap: () {},
                  withArrow: true,
                ),

                SettingsContainer(
                    child: Text(TextConstants.terms, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),

                  onTap: () {

                  },
                ),

                SettingsContainer(
                    child: Text(
                      TextConstants.signOut, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  onTap: () {},
                ),

                SizedBox(height: 15),
                Text(TextConstants.joinUs,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    TextButton(onPressed: () {},
                        style: TextButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.white, elevation: 1),
                        child: Image.asset(PathConstants.facebook)),

                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.white, elevation: 1),
                        child: Image.asset(PathConstants.instagram)),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.white, elevation: 1),
                        child: Image.asset(PathConstants.twitter)),



                  ],
                )





              ],
            ),
          ),
        ),

    );
  }
}
