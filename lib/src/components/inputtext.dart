import 'package:flutter/material.dart';

class KTextField {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final bool _tampilsandi = true;

  //User input untuk username
  TextFormField kUsernameField() {
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
      controller: emailcontroller, //controller email
      decoration: InputDecoration(
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  //User input intuk password
  TextFormField kUserPasswordField(Function() setstate) {
    return TextFormField(
      autofillHints: const [AutofillHints.password],
      obscureText: _tampilsandi,
      validator: (e) {
        if (e!.isEmpty) {
          return "Harap Masukkan Email";
        }
        return null;
      },
      controller: passwordcontroller, //controller password
      decoration: InputDecoration(
        hintText: "Password",
        suffixIcon: IconButton(
          onPressed: () {
            setstate;
          },
          icon: Icon(
            _tampilsandi
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Colors.black45,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
