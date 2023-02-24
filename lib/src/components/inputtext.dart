import 'package:flutter/material.dart';

import '../theme/color.dart';

class KTextField {
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
        label: const Text("Email"),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  //text input untuk personal data
  TextFormField personaldata(
      {required TextEditingController controllers, required String? label}) {
    return TextFormField(
      readOnly: true,
      enabled: false,
      decoration: InputDecoration(
        label: Text('$label'),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      controller: controllers,
    );
  }

  //Text Input untuk Password input
  TextFormField passwordinput({
    required bool obecuretext,
    required TextEditingController controller,
    required String label,
    required void Function()? setstate,
    void Function(String text)? onchanged,
  }) {
    return TextFormField(
      autofillHints: const [AutofillHints.password],
      obscureText: obecuretext,
      onChanged: onchanged,
      obscuringCharacter: '*',
      textInputAction: TextInputAction.next,
      validator: (e) {
        if (e!.isEmpty) {
          return "Harap Masukkan Password";
        }
        return null;
      },
      controller: controller, //controller password
      decoration: InputDecoration(
        label: Text(label),
        hintText: label,
        suffixIcon: IconButton(
          onPressed: setstate,
          icon: Icon(
            obecuretext
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: KColorTheme.warnaUtama,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
