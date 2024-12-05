import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RiveWidget extends StatefulWidget {
  const RiveWidget({super.key});

  @override
  _RiveWidgetState createState() => _RiveWidgetState();
}

class _RiveWidgetState extends State<RiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/lottie/juancx.json');
  }
}
