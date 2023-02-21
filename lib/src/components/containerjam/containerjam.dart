import 'dart:async';
import 'package:flutter/material.dart';
import './clockin.dart';
import 'package:zainozoho/src/theme/color.dart';

class KWidget extends StatefulWidget {
  const KWidget({super.key});

  @override
  State<KWidget> createState() => _KWidgetState();
}

class _KWidgetState extends State<KWidget> {
  String? hari;
  String? bulan;
  String? menit;
  String? jam;
  String? waktu;

  bool titikKoma = true;
  DateTime date = DateTime.now();
  Timer? timer;

  convertHari() {
    if (date.weekday == 1) hari = "Sen";
    if (date.weekday == 2) hari = "Sel";
    if (date.weekday == 3) hari = "Rab";
    if (date.weekday == 4) hari = "Kam";
    if (date.weekday == 5) hari = "Jum";
    if (date.weekday == 6) hari = "Sab";
    if (date.weekday == 7) hari = "Min";
    return hari;
  }

  convertBulan() {
    if (date.month == 1) bulan = "Jan";
    if (date.month == 2) bulan = "Feb";
    if (date.month == 3) bulan = "Mar";
    if (date.month == 4) bulan = "Apr";
    if (date.month == 5) bulan = "Mei";
    if (date.month == 6) bulan = "Jun";
    if (date.month == 7) bulan = "Jul";
    if (date.month == 3) bulan = "Agu";
    if (date.month == 4) bulan = "Sep";
    if (date.month == 5) bulan = "Okt";
    if (date.month == 6) bulan = "Nov";
    if (date.month == 7) bulan = "Des";
    return bulan;
  }

  @override
  void initState() {
    convertHari();
    convertBulan();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(
          () {
            titikKoma = !titikKoma;
            titikKoma
                ? waktu =
                    "${DateTime.now().hour.toString().padLeft(2, "0")}:${DateTime.now().minute.toString().padLeft(2, "0")}"
                : waktu =
                    "${DateTime.now().hour.toString().padLeft(2, "0")} ${DateTime.now().minute.toString().padLeft(2, "0")}";
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double lebar = MediaQuery.of(context).size.width;
    double tinggi = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(20),
      width: lebar,
      height: tinggi * 0.3,
      decoration: BoxDecoration(
        color: KColorTheme.warnaDasar,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "$waktu",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "$hari, ${date.day} $bulan ${date.year}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "(Weekday) 09:00 - 17:00",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ClockIn(),
                    ),
                  );
                },
                child: Container(
                  width: (lebar - 40) * 0.4,
                  height: (tinggi * 0.26) * 0.25,
                  decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(
                          0.3,
                          0.3,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: KColorTheme.warnaUtama,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(200, 255, 255, 255),
                        Color.fromARGB(50, 255, 255, 255),
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Clock In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: (lebar - 40) * 0.4,
                  height: (tinggi * 0.26) * 0.25,
                  decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(
                          0.3,
                          0.3,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: KColorTheme.warnaUtama,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(200, 255, 255, 255),
                        Color.fromARGB(50, 255, 255, 255),
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Clock Out",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


/*
class KWidgetClock{

  String? hari;
  String? bulan;
  String? menit;
  String? jam;
  String? waktu;

  bool titikKoma = true;
  DateTime date = DateTime.now();
  Timer? timer;

  KWidgetClock({required State});

  convertHari() {
    if (date.weekday == 1) hari = "Sen";
    if (date.weekday == 2) hari = "Sel";
    if (date.weekday == 3) hari = "Rab";
    if (date.weekday == 4) hari = "Kam";
    if (date.weekday == 5) hari = "Jum";
    if (date.weekday == 6) hari = "Sab";
    if (date.weekday == 7) hari = "Min";
    return hari;
  }

  convertBulan() {
    if (date.month == 1) hari = "Jan";
    if (date.month == 2) hari = "Feb";
    if (date.month == 3) hari = "Mar";
    if (date.month == 4) hari = "Apr";
    if (date.month == 5) hari = "Mei";
    if (date.month == 6) hari = "Jun";
    if (date.month == 7) hari = "Jul";
    if (date.month == 3) hari = "Agu";
    if (date.month == 4) hari = "Sep";
    if (date.month == 5) hari = "Okt";
    if (date.month == 6) hari = "Nov";
    if (date.month == 7) hari = "Des";
    return bulan;
  }

  @override
  void initState() {
    convertHari();
    convertBulan();
    // TODO: implement initState
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        titikKoma = !titikKoma;
        titikKoma
            ? waktu =
                "${DateTime.now().hour.toString().padLeft(2, "0")}:${DateTime.now().minute.toString().padLeft(2, "0")}"
            : waktu =
                "${DateTime.now().hour.toString().padLeft(2, "0")} ${DateTime.now().minute.toString().padLeft(2, "0")}";
      });
    });
    super.initState();
  }

  Container widgetclock() {
    return Container();
  }
}


*/

/*

String hari = "", bulan = "", menit = "", jam = "", waktu = "";

  bool titikKoma = true;
  DateTime date = DateTime.now();
  Timer? _timer;

  convertHari() {
    if (date.weekday == 1) {
      hari = "Sen";
    }
    if (date.weekday == 2) {
      hari = "Sel";
    }
    if (date.weekday == 3) {
      hari = "Rab";
    }
    if (date.weekday == 4) {
      hari = "Kam";
    }
    if (date.weekday == 5) {
      hari = "Jum";
    }
    if (date.weekday == 6) {
      hari = "Sab";
    }
    if (date.weekday == 7) {
      hari = "Ming";
    }

    return hari;
  }

  convertBulan() {
    if (date.month == 1) {
      bulan = "Jan";
    }
    if (date.month == 2) {
      bulan = "Feb";
    }
    if (date.month == 3) {
      bulan = "Mar";
    }
    if (date.month == 4) {
      bulan = "Apr";
    }
    if (date.month == 5) {
      bulan = "Mei";
    }
    if (date.month == 6) {
      bulan = "Jun";
    }
    if (date.month == 7) {
      bulan = "Jul";
    }
    if (date.month == 8) {
      bulan = "Ags";
    }
    if (date.month == 9) {
      bulan = "Sept";
    }
    if (date.month == 10) {
      bulan = "Okt";
    }
    if (date.month == 11) {
      bulan = "Nov";
    }
    if (date.month == 12) {
      bulan = "Des";
    }

    return bulan;
  }

  @override
  void initState() {
    convertHari();
    convertBulan();
    // TODO: implement initState
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        titikKoma = !titikKoma;
        titikKoma
            ? waktu =
                "${DateTime.now().hour.toString().padLeft(2, "0")}:${DateTime.now().minute.toString().padLeft(2, "0")}"
            : waktu =
                "${DateTime.now().hour.toString().padLeft(2, "0")} ${DateTime.now().minute.toString().padLeft(2, "0")}";
      });
    });
    super.initState();
  }







 Container(
              padding: EdgeInsets.all(20),
              width: lebar,
              height: tinggi * 0.26,
              decoration: BoxDecoration(
                color: warnaDasar,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "$waktu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "$hari, ${date.day} $bulan ${date.year}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  spacer(20),
                  Text(
                    "(Weekday) 09:00 - 17:00",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  spacer(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => clockIn()));
                        },
                        child: Container(
                          width: (lebar - 40) * 0.4,
                          height: (tinggi * 0.26) * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 255, 255, 255),
                                Color.fromARGB(50, 255, 255, 255),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Clock In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: (lebar - 40) * 0.4,
                          height: (tinggi * 0.26) * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 255, 255, 255),
                                Color.fromARGB(50, 255, 255, 255),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Clock Out",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


*/