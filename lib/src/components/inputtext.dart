import 'package:flutter/material.dart';

class KTextField {
  // final emailcontroller = TextEditingController();
  // final passwordcontroller = TextEditingController();
  // static bool tampilsandi = true;

  //User input untuk username
  TextFormField kUsernameField({required TextEditingController controller}) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Mohon isikan Email anda';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      controller: controller, //controller email
      decoration: InputDecoration(
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  //User input intuk password
  // TextFormField kUserPasswordField(Function() setstate) {
  //   return TextFormField(
  //     autofillHints: const [AutofillHints.password],
  //     obscureText: tampilsandi,
  //     textInputAction: TextInputAction.send,
  //     validator: (e) {
  //       if (e!.isEmpty) {
  //         return "Harap Masukkan Password";
  //       }
  //       return null;
  //     },
  //     controller: passwordcontroller, //controller password
  //     decoration: InputDecoration(
  //       hintText: "Password",
  //       suffixIcon: IconButton(
  //         onPressed: () {
  //           setstate;
  //         },
  //         icon: Icon(
  //           tampilsandi
  //               ? Icons.visibility_outlined
  //               : Icons.visibility_off_outlined,
  //           color: Colors.black45,
  //         ),
  //       ),
  //       border: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(15),
  //       ),
  //     ),
  //   );
  // }
}
