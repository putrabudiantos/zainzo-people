import 'package:flutter/material.dart';
import '../components/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar.appbar(
        context: context,
        leadings:
            Image.asset('assets/images/gojeklogo.png', fit: BoxFit.contain),
      ),
    );
  }
}
