import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:zainozoho/src/components/appbar.dart';
import 'package:zainozoho/src/components/textstyle/title.dart';
import 'package:zainozoho/src/components/listtile/listtile.dart';

import '../../components/button.dart';

class PengingatCiCo extends StatefulWidget {
  const PengingatCiCo({super.key});

  @override
  State<PengingatCiCo> createState() => _PengingatCiCoState();
}

class _PengingatCiCoState extends State<PengingatCiCo> {
  final appbarcomponents = KAppBar();
  final button = KButton();
  final styledata = KTextStyle();
  bool pengingatclockin = false;
  bool pengingatclockout = false;
  final listtiles = ListTiles();
  bool pengingathari = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarcomponents.appbar(
          context: context, titles: 'Pengingat Clock In/Out'),
      body: ListView(
        children: [
          //Listtile untuk pengingat clockin
          listtiles.listtile(
              onchange: (bool? value) {
                setState(() {
                  pengingatclockin = value ?? false;
                });
              },
              text: "Pengingat Clock In",
              values: pengingatclockin),

          //Listtile untuk pengingat clockout
          listtiles.listtile(
              text: "Pengingat Clock Out",
              onchange: (bool? value) {
                setState(() {
                  pengingatclockout = value ?? false;
                });
              },
              values: pengingatclockout),

          //divider
          const Divider(),

          //if true disyplay this
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: button.kElevetedButton("Simpan Perubahan", () {}),
      ),
    );
  }
}
