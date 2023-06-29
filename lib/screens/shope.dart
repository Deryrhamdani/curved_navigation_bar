import 'package:flutter/material.dart';

class Shope extends StatefulWidget {
  const Shope({Key? key}) : super(key: key);

  @override
  State<Shope> createState() => _ShopeState();
}

class _ShopeState extends State<Shope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        padding: const EdgeInsets.all(60.0),
        child: Center(
          child: Image.asset('assets/images/sale.png'),
        ),
      ),
    );
  }
}
