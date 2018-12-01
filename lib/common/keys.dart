import 'package:flutter/material.dart';

class Keys {
  static GlobalKey<FormState> nameFormKey = GlobalKey<FormState>();
  static GlobalKey<FormState> parentFormKey = GlobalKey<FormState>();
  static GlobalKey<FormState> locationFormKey = GlobalKey<FormState>();
  static GlobalKey<FormFieldState<String>> nameFormFieldKey = GlobalKey<FormFieldState<String>>();
  static GlobalKey<FormFieldState<String>> fatherFormFieldKey = GlobalKey<FormFieldState<String>>();
  static GlobalKey<FormFieldState<String>> motherFormFieldKey = GlobalKey<FormFieldState<String>>();
  static GlobalKey<FormFieldState<String>> districtFormFieldKey = GlobalKey<FormFieldState<String>>();
  static GlobalKey<FormFieldState<String>> streetFormFieldKey = GlobalKey<FormFieldState<String>>();
  static GlobalKey<FormFieldState<String>> houseNumberFormFieldKey = GlobalKey<FormFieldState<String>>();
  static GlobalKey<FormFieldState<String>> phoneNumberFormFieldKey = GlobalKey<FormFieldState<String>>();

  ///FocusNodes
  static FocusNode nameFocusNode = FocusNode();
  static FocusNode filiationMotherNode = FocusNode();
  static FocusNode filiationFatherNode = FocusNode();
  static FocusNode districtFocusNode = FocusNode();
  static FocusNode streetFocusNode = FocusNode();
  static FocusNode houseNumberFocusNode = FocusNode();
}