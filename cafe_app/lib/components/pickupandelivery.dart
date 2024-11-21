import 'package:flutter/material.dart';

class PickUpAndDelivery extends StatefulWidget {
  const PickUpAndDelivery({super.key});

  @override
  State<PickUpAndDelivery> createState() => _PickUpAndDeliveryState();
}

class _PickUpAndDeliveryState extends State<PickUpAndDelivery> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: const Color(0xFFF0F0F0)),
        width: 321,
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 154,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFC67C4E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Deliver',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              width: 154,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFF0F0F0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Center(
                  child: Text(
                    'Pick Up',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
