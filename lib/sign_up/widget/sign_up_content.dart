import 'package:dell_project/common_widgets/FitnessLoading.dart';
import 'package:dell_project/common_widgets/fitness_text_field.dart';
import 'package:dell_project/core/const/color_constants.dart';
import 'package:dell_project/core/const/text_constants.dart';
import 'package:dell_project/sign_up/bloc/signup_block.dart';
import 'package:dell_project/sign_up/bloc/signup_event.dart';
import 'package:dell_project/sign_up/bloc/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();

      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorConstants.white,
        child: Stack(
          children: [
            _createMainData(context),
            BlocBuilder<SignUpBloc, SignUpState>
              (
              buildWhen: (_, currState) => currState is LoadingState || currState is NextTabBarPageState || currState is ErrorState,
                builder: (context, state) {
                if(state is LoadingState) {
                  return _createLoading();
                } else if (state is NextTabBarPageState || state is ErrorState) {
                  return SizedBox();
                }
                return SizedBox();
                }
                ),

          ],
        ),
      ),
    );
  }

  Widget _createMainData(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
            _createTitle(),
              
              _createForm(context),
              const SizedBox(height: 40),
              
            ],
          ),
        )
    );
  }

  Widget _createLoading() {
    return FitnessLoading();

  }

  Widget _createTitle() {
    return Text(
      TextConstants.signUp,
      style: TextStyle(
        color: ColorConstants.textBlack,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );



  }
  
  Widget _createForm(BuildContext context) {
    final bloc = BlocProvider.of<SignUpBloc>(context);
     return BlocBuilder<SignUpBloc, SignUpState>(
       buildWhen: (_,currState)=> currState is ShowErrorState,
         builder: (context, state) {
         return Column(
           children: [
          FitnessTextField(
            title: TextConstants.username,
            placeholder: TextConstants.userNamePlaceholder,
            controller: bloc.userNameController,
            textInputAction: TextInputAction.next,
            errorText: TextConstants.usernameErrorText,
            //isError: state is ShowErrorState ? !Vali,

            onTextChanged: () {
              bloc.add(OnTextChangedEvent());

            },
          ),
             const SizedBox(height: 20),
             FitnessTextField(
               title: TextConstants.email,
               placeholder: TextConstants.emailPlaceholder,
               textInputAction: TextInputAction.next,
               keyboardType: TextInputType.emailAddress,
               controller: bloc.emailController,
               errorText: TextConstants.emailErrorText,
                 onTextChanged: () {
                   bloc.add(OnTextChangedEvent());
                 },
                // errorText: errorText
             ),

             const SizedBox(height: 20),
             FitnessTextField(
               title: TextConstants.password,
               placeholder: TextConstants.passwordPlaceholder,
               obscureText: true,
              // isError: state is ShowErrorState ? !ValidationService.password(bloc.passwordController.text) : false,
               textInputAction: TextInputAction.next,
               controller: bloc.passwordController,
               errorText: TextConstants.passwordErrorText,
               onTextChanged: () {
                 bloc.add(OnTextChangedEvent());
               },
             ),

             const SizedBox(height: 20),
             FitnessTextField(
               title: TextConstants.confirmPassword,
               placeholder: TextConstants.confirmPasswordPlaceholder,
               obscureText: true,
              // isError: state is ShowErrorState ? !ValidationService.confirmPassword(bloc.passwordController.text, bloc.confirmPasswordController.text) : false,
               controller: bloc.confirmPasswordController,
               errorText: TextConstants.confirmPasswordErrorText,
               onTextChanged: () {
                 bloc.add(OnTextChangedEvent());
               },
             ),
           ],
         );
         }
         );
  }


}
