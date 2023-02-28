import 'package:flutter/material.dart';
import '../textstyle/title.dart';
import 'package:zainozoho/src/data/datauser/dataperson.dart';

//kelas ini untuk membuat template log absensi
class LogAbsensi extends StatelessWidget {
  LogAbsensi({super.key});
  final styles = KTextStyle();
  final data = DataUser();
  bool boolclockout = true;

  @override
  Widget build(BuildContext context) {
    String clockout = "";
    //Container pada saat jika ada log absen maka kontainer ini akan muncul
    //dan menampilkn widget template yang telah saya buat di bawah
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        //saya menggunakan looping mapping di children list
        children: [
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
          viewmodels(
              clockin: "10.00",
              clockout: "29.03",
              context: context,
              hari: "Sel",
              tanggal: "12"),
        ]

        // data.logabsen
        //     .map((e) => viewmodels(
        //         context: context,
        //         clockin: e['clockin'],
        //         clockout: e['clokout'],
        //         hari: e['hari'],
        //         tanggal: e['tanggal']))
        //     .toList(),

        );
  }

  //fungsi untuk template layout log abesen
  viewmodels(
      {String? hari,
      String? tanggal,
      String? clockin,
      clockout,
      BuildContext? context}) {
    if (clockout.isNotEmpty) {
      boolclockout == false;
    } else {
      boolclockout = true;
    }
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context!).size.width,
        child: Column(
          children: [
            //ini row untuk models templates
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Column untuk tanggal dan hari
                Column(
                  children: [
                    Text(
                      hari!,
                      style: const TextStyle(fontFamily: "Inter", fontSize: 16),
                    ),
                    Text(
                      tanggal!,
                      style: const TextStyle(
                          fontFamily: "Inter",
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                //Column untuk jam clockin dan clock out
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //untuk tanggal
                    Text(
                      clockin!,
                      style: const TextStyle(fontFamily: "Inter", fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    boolclockout == true
                        ? Text(
                            clockout,
                            style: const TextStyle(
                                fontFamily: "Inter", fontSize: 16),
                          )
                        : const Text('')
                  ],
                ),
                //column untuk text clock in/out
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //untuk tanggal
                    const Text(
                      "Clock In",
                      style: TextStyle(fontFamily: "Inter", fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    boolclockout == true
                        ? const Text(
                            "ClockOut",
                            style: TextStyle(fontFamily: "Inter", fontSize: 16),
                          )
                        : const Text(''),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 17,
                    ),
                    const SizedBox(height: 15),
                    boolclockout == true
                        ? const Icon(Icons.arrow_forward_ios, size: 17)
                        : const Text('')
                  ],
                )
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
