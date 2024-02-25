import 'package:flutter/material.dart';

import '../../components/appbar/custom_appbar.dart';
import '../../constant/constant.dart';
class Shipment extends StatefulWidget {
  const Shipment({super.key});

  @override
  State<Shipment> createState() => _ShipmentState();
}

class _ShipmentState extends State<Shipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Constant.grey300,
      body: Center(
        child: Text("Shipment"),
      ),
    );
  }
}
