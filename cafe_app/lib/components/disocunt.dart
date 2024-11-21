import 'package:flutter/material.dart';

class Discount extends StatefulWidget {
  const Discount({super.key});

  @override
  State<Discount> createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            border: Border.all(color: const Color(0xffEAEAEA), width: 1),
            borderRadius: BorderRadius.circular(13)),
        // color:
        width: 315,
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/images/Discount.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  '1 Discount is applied',
                  style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_rounded)),
          ],
        ),
      ),
    );
  }
}
