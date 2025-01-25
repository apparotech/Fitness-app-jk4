
import 'package:flutter/material.dart';

@immutable
abstract class SignupEvent{}
class OnTextChangedEvent extends SignupEvent {}

class SignUpTappedEvent extends SignupEvent {}

class SignInTappedEvent extends SignupEvent {}
