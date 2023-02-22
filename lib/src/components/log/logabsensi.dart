import 'package:flutter/material.dart';
import '../textstyle/title.dart';
import 'package:zainozoho/src/data/datauser/dataperson.dart';

class LogAbsensi extends StatelessWidget {
  LogAbsensi({super.key});
  final styles = KTextStyle();

  @override
  Widget build(BuildContext context) {
    final data = DataUser();

    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: data.logabsen.map((e) {
          return Dismissible(
            key: Key(e.toString()),
            child: ListTile(
              onTap: () {},
              title: Text('${e["nama"]}', style: styles.midstyletext),
              subtitle: Text(
                  'Check In: ${e["checkin"]}\nCheck Out: ${e["checkout"]}'),
            ),
          );
        }).toList(),
      ),
    );
  }
}
