import 'package:dell_project/common_widgets/fitness_text_field.dart';
import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:flutter/cupertino.dart';

class SignInContent extends StatelessWidget {

  const SignInContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  //  throw UnimplementedError();
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstants.white,
      child:  Stack(
        children: [
          _createMainData(context)

        ],
      ),
    );
  }

  Widget _createMainData(BuildContext context) {
 double height = MediaQuery.of(context).size.height;
 return SafeArea(
   child:  SingleChildScrollView(
     child:  SizedBox(
       height: height - 30 - MediaQuery.of(context).padding.bottom,
       child:  Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           const SizedBox(height: 20),
           _createHeader(),
           const SizedBox(height: 50),
           _createForm(context),
           const SizedBox(height: 20),

           //_createForm()
         ],
       ),
     ),
   ),
 );
  }

  Widget _createHeader() {
    return Center(
      child: Text(
        TextConstants.signIn,
        style: TextStyle(
          color: ColorConstants.textBlack,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _createForm(BuildContext context) {
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        FitnessTextField(
            title: TextConstants.email,
          textInputAction: TextInputAction.next,
            placeholder: TextConstants.emailPlaceholder,
            onTextChanged: () {

            },
          errorText: 'false',
            //errorText: errorText
        ),
        const SizedBox(
          height: 20,
        ),




      ],
    );
  }
}