import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextConstants.changePassword, style: TextStyle(color: Colors.black, fontSize: 18),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: ()  {},
            icon: Icon(Icons.arrow_back_ios_new),

          ),
        iconTheme: IconThemeData(
          color: ColorConstants.primaryColor
        ),
      ),


    );

  }


}
