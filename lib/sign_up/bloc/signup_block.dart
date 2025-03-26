import 'package:dell_project/sign_up/bloc/signup_event.dart';
import 'package:dell_project/sign_up/bloc/signup_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignupEvent, SignUpState> {
  SignUpBloc() : super(SignupInitial());

  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isButtonEnabled = false;

  @override
 Stream<SignUpState> mapEventToState(
      SignupEvent event,

      ) async* {

  }


  bool checkIfSignUpButtonEnabled() {
    return  userNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty;

  }


}