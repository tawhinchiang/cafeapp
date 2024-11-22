import 'package:flutter/material.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 161,
      height: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          Text(
            'Araguaína, Tocantins',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
