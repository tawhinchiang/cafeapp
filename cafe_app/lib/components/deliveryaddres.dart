import 'package:flutter/material.dart';

class DeliveryAddres extends StatefulWidget {
  const DeliveryAddres({super.key});

  @override
  State<DeliveryAddres> createState() => _DeliveryAddresState();
}

class _DeliveryAddresState extends State<DeliveryAddres> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 321,
      height: 92,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery Address',
            style: TextStyle(
              color: Color(0xff2F2D2C),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 14),
          Text(
            'Jl. Kpg Sutoyo',
            style: TextStyle(
              color: Color(0xff2F2D2C),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 14),
          Text(
            'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
            style: TextStyle(
              color: Color(0xFF808080),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
