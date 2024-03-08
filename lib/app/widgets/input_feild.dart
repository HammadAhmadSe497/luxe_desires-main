import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxe_desires/app/constants/contants.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final Function validatior;
  final void Function(String?)? saved;
  final void Function(String)? submitted;
  final void Function(String)? onChanged;
  final Function()? onTap;
  final TextEditingController inputController;
  final TextInputType? type;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool secure;
  final bool isContentPadding;
  final IconData? suffix;
  final bool readOnly;
  final Function()? suffixPress;
  final int? maxLines;
  final Color? bgColor;
  final Color? bdColor;
  final Color? iconColor;
  final Color? labelColor;
  final IconData? prefix;

  const InputField(
      {super.key,
      required this.labelText,
      required this.validatior,
      required this.inputController,
      this.onTap,
      this.type,
      this.focusNode,
      this.submitted,
      this.saved,
      this.suffix,
      this.maxLines = 1,
      this.suffixPress,
      this.onChanged,
      this.bgColor,
      this.bdColor,
      this.iconColor,
      this.labelColor,
      this.prefix,
      this.textInputAction,
      this.isContentPadding = true,
      this.readOnly = false,
      this.secure = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        onTap: onTap,
        autocorrect: false,
        onChanged: onChanged,
        maxLines: maxLines,
        onFieldSubmitted: submitted,
        onSaved: saved,
        focusNode: focusNode,
        textInputAction: textInputAction,
        obscureText: secure,
        readOnly: readOnly,
        keyboardType: type,
        controller: inputController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          var error = validatior(value);

          return error;
        },
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: const Color(0xFF0F1113),
            ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w, vertical: !isContentPadding ? 8.h : 20.h),
          suffixIcon: suffix != null
              ? Bounce(
                  duration: const Duration(milliseconds: 150),
                  onPressed: suffixPress!,
                  child: Icon(
                    suffix,
                    color: iconColor ?? const Color.fromRGBO(98, 98, 98, 1),
                  ),
                )
              : null,
          fillColor: bgColor ?? Colors.white,
          filled: true,
          alignLabelWithHint: true,
          label: Text(
            labelText,
            style: GoogleFonts.lexendDeca(
              color: const Color(0xFF95A1AC),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: bdColor ?? const Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: bdColor ?? const Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: bdColor ?? const Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: bdColor ?? const Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: bdColor ?? const Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          errorStyle: bodystyle.copyWith(
              color: Colors.red, fontSize: 12.sp, height: 0.1),
        ),
      ),
    );
  }
}
