import 'package:dell_project/change_password/change_password_page.dart';
import 'package:dell_project/common_widgets/common_widget.dart';
import 'package:dell_project/common_widgets/fitness_button.dart';
import 'package:dell_project/common_widgets/settings_textfield.dart';
import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:flutter/material.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? photoUrl;
  bool isNameInvalid = false;
  bool isEmailInvalid = false;
  late String userName;
  late String userEmail;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _editAccountContent(context),
      appBar: AppBar(
        title: Text(TextConstants.editAccount,
               style: TextStyle(color: Colors.black, fontSize: 18),),

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {} ,
            icon: Icon(Icons.arrow_back_ios_new)
        ),

        iconTheme: IconThemeData(
          color: ColorConstants.primaryColor
        ),
      ),
    );
  }

  Widget _editAccountContent(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: SizedBox(
              height:  height - 140 - MediaQuery.of(context).padding.bottom,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          TextConstants.editPhoto,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.primaryColor
                          ),
                        )
                    ),
                  ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  TextConstants.fullName,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),

                SettingsContainer(
                    child: SettingsTextField(
                        controller: _nameController,
                        placeHolder: TextConstants.fullNamePlaceholder
                    )
                ),

                if(isNameInvalid)
                Text(
                  TextConstants.nameShouldContain2Char,
                  style: TextStyle(
                    color:  ColorConstants.errorColor
                  ),
                ),

                Text(
                  TextConstants.email,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),

                SettingsContainer(
                    child: SettingsTextField(
                        controller: _emailController,
                        placeHolder:  TextConstants.emailPlaceholder,
                    )
                ),
                if(isEmailInvalid)
                  Text(TextConstants.emailErrorText,
                  style: TextStyle(
                    color: ColorConstants.errorColor
                  ),),

                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePasswordPage()
                        ),
                    );

                  },

                  child: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Text(
                        TextConstants.changePassword,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.primaryColor,
                          fontSize: 18
                        ),

                        
                      ),

                      SizedBox(width: 10,),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: ColorConstants.primaryColor,
                      )
                    ],
                  ),
                ),

                Spacer(),
                FitnessButton(
                    title: TextConstants.save,
                    isEnabled: true,
                    onTap: () {

                    }

                )






              ],
              ),
            ),
          ),
        )
    );
  }
}
