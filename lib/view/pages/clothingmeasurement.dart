import "package:flutter/material.dart";

class ClothingMeasurement  extends StatefulWidget {
  const ClothingMeasurement ({super.key});

  @override
  State<ClothingMeasurement > createState() => _ClothingMeasurementState();
}

class _ClothingMeasurementState extends State<ClothingMeasurement > {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("clothing Screen", style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
