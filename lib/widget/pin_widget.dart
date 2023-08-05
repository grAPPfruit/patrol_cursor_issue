import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinWidget extends StatelessWidget {
  const PinWidget({
    super.key,
    required this.pinController,
  });

  final TextEditingController pinController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: PinCodeTextField(
        length: 6,
        showCursor: true, // TODO: if true, test will fail if settle is also true
        animationDuration: const Duration(milliseconds: 300),
        animationType: AnimationType.fade,
        appContext: context,
        autoFocus: true,
        backgroundColor: Colors.transparent,
        boxShadows: const [
          BoxShadow(
            offset: Offset(0, 0),
            color: Colors.black12,
            blurRadius: 0,
          )
        ],
        controller: pinController,
        cursorColor: const Color(0xff575757),
        enableActiveFill: true,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(7),
          borderWidth: 1,
          fieldWidth: 32,
          fieldHeight: 64,
          activeFillColor: const Color(0xffFFFFFF),
          activeColor: const Color(0xff2d2d2d).withOpacity(0.05),
          disabledColor: const Color(0xffFFFFFF),
          selectedColor: const Color(0xff575757),
          selectedFillColor: const Color(0xffFFFFFF),
          inactiveColor: const Color(0xffDDDDDD),
          inactiveFillColor: const Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
