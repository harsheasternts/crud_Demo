
import 'package:animation_demo/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final int? maximumLengthOfField;
  final FocusNode textfiledFocusNode;
  final String textFieldLableName;
  final String? textFieldCounterText;
  final FormFieldValidator<String>? textformFieldValidator;
  final Widget? suffixIconWidget;
  final List<TextInputFormatter>? textFieldInputFormater;
  final int? textFieldMaximumLines;
  const CustomTextFieldWidget({
    Key? key,
    required this.controller,
    this.maximumLengthOfField,
    required this.textfiledFocusNode,
    required this.textFieldLableName,
    this.textFieldCounterText,
    this.textformFieldValidator,
    this.suffixIconWidget,
    this.textFieldInputFormater,
    this.textFieldMaximumLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: CommonColorConstants.blueLightColor,
      maxLength: maximumLengthOfField,
      focusNode: textfiledFocusNode,
      inputFormatters: textFieldInputFormater,
      maxLines: textFieldMaximumLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 6.0),
        labelText: textFieldLableName,
        labelStyle: TextStyle(
          fontSize: 16.0,
          color: textfiledFocusNode.hasFocus
              ? CommonColorConstants.blueLightColor
              : Colors.grey,
        ),
        counterText: textFieldCounterText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: CommonColorConstants.blueLightColor,
          ),
        ),
        suffixIcon: suffixIconWidget,
      ),
      validator: textformFieldValidator,
    );
  }
}
