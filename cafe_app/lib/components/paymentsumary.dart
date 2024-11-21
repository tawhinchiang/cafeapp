import 'package:flutter/material.dart';

class PaymentSumary extends StatefulWidget {
  final String price;
  const PaymentSumary({super.key, required this.price});

  @override
  State<PaymentSumary> createState() => _PaymentSumaryState();
}

class _PaymentSumaryState extends State<PaymentSumary> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0, top: 21, bottom: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Payment Summary',
              style: TextStyle(
                  color: Color(0xff2F2D2C),
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
          Padding(
            padding: const EdgeInsets.only(bottom: 14, top: 9),
            child: SizedBox(
              width: 315,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Price',
                      style: TextStyle(
                          color: Color(0xff2F2D2C),
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                  const SizedBox(width: 10),
                  Text(widget.price),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: 315,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery Fee'),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text('\$ 2.0 '),
                      SizedBox(width: 10),
                      Text(
                        '\$ 1.0',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 315,
            child: Divider(
              thickness: 0.8,
              color: Color(0xFFEAEAEA),
            ),
          ),
          const SizedBox(
            width: 315,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Payment',
                    style: TextStyle(
                        color: Color(0xff2F2D2C),
                        fontWeight: FontWeight.w400,
                        fontSize: 14)),
                SizedBox(width: 10),
                Text('\$ 5.53'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
