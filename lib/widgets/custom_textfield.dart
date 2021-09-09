import '/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.textController,
    this.fillColor,
    this.prefixIcon,
    this.padding,
    this.textInputType,
    this.autoFocus = false,
    this.validator,
  }) : super(key: key);

  final TextEditingController? textController;
  final Icon? prefixIcon;
  final Color? fillColor;
  final double? padding;
  final TextInputType? textInputType;
  final bool autoFocus;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 0.0),
      child: TextFormField(
        controller: textController,
        keyboardType: textInputType ?? TextInputType.name,
        autofocus: autoFocus,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ?? CustomColors.inputFillColor,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide.none,
          ),
        ),
        validator: validator,
      ),
    );
  }
}
