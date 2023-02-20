import 'package:flutter/material.dart';
import 'package:zainozoho/src/components/appbar.dart';

class LupaSandi extends StatefulWidget {
  const LupaSandi({super.key});

  @override
  State<LupaSandi> createState() => _LupaSandiState();
}

class _LupaSandiState extends State<LupaSandi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: KAppBar.appbar(context: context, titles: 'Lupa Password'));
  }
}
