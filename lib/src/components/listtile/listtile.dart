import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListTiles {
  listtile(
      {required String text,
      required Function(bool? value) onchange,
      required bool values}) {
    return ListTile(
      title: Text(text),
      trailing: CupertinoSwitch(
        value: values,
        activeColor: Colors.red,
        onChanged: onchange,
      ),
    );
  }

  checking({bool? kondisi, required Function(Function()) setstate}) {
    return Column(
      children: [
        ListTile(
          title: const Text("Senin"),
          trailing: CupertinoSwitch(
            value: kondisi!,
            activeColor: Colors.red,
            onChanged: (bool? value) {
              setstate;
            },
          ),
        ),
        ListTile(
          title: const Text("Selasa"),
          trailing: CupertinoSwitch(
            value: kondisi,
            activeColor: Colors.red,
            onChanged: (bool? value) {
              setstate;
            },
          ),
        ),
        ListTile(
          title: const Text("Rabu"),
          trailing: CupertinoSwitch(
            value: kondisi,
            activeColor: Colors.red,
            onChanged: (bool? value) {
              setstate;
            },
          ),
        ),
        ListTile(
          title: const Text("Kamis"),
          trailing: CupertinoSwitch(
            value: kondisi,
            activeColor: Colors.red,
            onChanged: (bool? value) {
              setstate;
            },
          ),
        ),
        ListTile(
          title: const Text("Jumat"),
          trailing: CupertinoSwitch(
            value: kondisi,
            activeColor: Colors.red,
            onChanged: (bool? value) {
              setstate;
            },
          ),
        ),
        ListTile(
          title: const Text("Sabtu"),
          trailing: CupertinoSwitch(
            value: kondisi,
            activeColor: Colors.red,
            onChanged: (bool? value) {
              setstate;
            },
          ),
        ),
        ListTile(
          title: const Text("Minggu"),
          trailing: CupertinoSwitch(
            value: kondisi,
            activeColor: Colors.red,
            onChanged: (bool? value) {
              setstate;
            },
          ),
        ),
      ],
    );
    // }

    // checkifclockin(bool? active) {
    //   List days = [
    //     "Senin",
    //     "Selasa",
    //     "Rabu",
    //     "Kamis",
    //     "Jumat",
    //     "Sabtu",
    //     "Minggu"
    //   ];
    //   List boolean = [false, false, false, false, false, false, false];

    //   if (active == true) {
    //     return List.generate(7, (index) {
    //       return listtile(
    //           text: days[index],
    //           onchange: (bool? kondisi) {},
    //           values: boolean[index]);
    //     });
    //   } else {
    //     active = false;
    //   }
    // }

    //
//   checkifclockout() {
//     List days = [
//       "Senin",
//       "Selasa",
//       "Rabu",
//       "Kamis",
//       "Jumat",
//       "Sabtu",
//       "Minggu"
//     ];
//     List boolean = [false, false, false, false, false, false, false];
//     List<Function> func = [
//       senin(false),
//       selasa(false),
//       rabu(false),
//       kamis(false),
//       jumat(false),
//       sabtu(false),
//       minggu(false)
//     ];
//     // for (int i = 0; i <= days.length; i++) {
//     //   return ListTile(
//     //     title: Text(i.toString()),
//     //     trailing: CupertinoSwitch(
//     //       value: boolean[i],
//     //       activeColor: Colors.red,
//     //       onChanged: func,
//     //     ),
//     //   );
//     // }
//   }

//   senin(bool a) {}
//   selasa(bool b) {}
//   rabu(bool c) {}
//   kamis(bool d) {}
//   jumat(bool e) {}
//   sabtu(bool f) {}
//   minggu(bool g) {}
  }
}
