import 'package:flutter/material.dart';
import 'package:mocha_vista/core/utlis/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final bool readOnly;
  final TextStyle? hintstyle;
  final String? Function(String?)? validator;
  final InputBorder? enabledborder;
  final InputBorder? focusedborder;
  final TextStyle? errorStyle;
  final Widget? preffixIcon;
  final Widget? suffixIcon;
  final type;
  final TextStyle? style;
  final maxlines;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.readOnly = false,
    this.hintstyle,
    this.validator,
    this.enabledborder,
    this.focusedborder,
    this.errorStyle,
    this.preffixIcon,
    this.suffixIcon,
    this.type,
    this.style,
    this.maxlines,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText && _obscureText,
      validator: widget.validator,
      readOnly: widget.readOnly,
      keyboardType: widget.type,
      style: Theme.of(context).textTheme.bodySmall,
      maxLines: widget.maxlines,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.darkBrown),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.darkBrown),
          borderRadius: BorderRadius.circular(12),
        ),
        errorStyle: TextStyle(color: Colors.red),
        prefixIcon: widget.preffixIcon,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : widget.suffixIcon,
      ),
    );
  }
}
