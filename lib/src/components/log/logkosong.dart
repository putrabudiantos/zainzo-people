import 'package:flutter/material.dart';
import '../textstyle/title.dart';

class LogKosong extends StatelessWidget {
  const LogKosong({
    super.key,
    required this.styledata,
  });

  final KTextStyle styledata;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Column(
        children: [
          const SizedBox(height: 80),
          Text('Tidak ada log aktifitas hari ini',
              style: styledata.midstyletext),
          const SizedBox(height: 10),
          Text('Aktifitas ClockIn/ClockOut\nanda akan tampil disini',
              style: styledata.subtitle),
        ],
      ),
    );
  }
}
