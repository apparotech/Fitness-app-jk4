import 'package:flutter/material.dart';

abstract class SignInEvent {}

class OnTextChangeEvent extends SignInEvent{}
class SignInTappedEvent extends SignInEvent {}

class SignUpTappedEvent extends SignInEvent {}

class ForgotPasswordTappedEvent extends SignInEvent {}
