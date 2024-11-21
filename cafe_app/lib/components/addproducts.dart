import 'package:flutter/material.dart';

class AddProducts extends StatefulWidget {
  final String imageproduto;
  final String nomeproduto;
  final String descrprod;
  final String price;
  const AddProducts(
      {super.key,
      required this.imageproduto,
      required this.nomeproduto,
      required this.descrprod,
      required this.price});

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 308,
        height: 54,
        child: Row(
          children: [
            SizedBox(
              width: 308,
              height: 54,
              child: Row(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      widget.imageproduto,
                      width: 54,
                      height: 54,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 7.5, bottom: 7.5, left: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.nomeproduto,
                            style: const TextStyle(
                                color: Color(0xff2F2D2C),
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          const Text(
                            'with Chocolate',
                            style: TextStyle(
                                color: Color(0xff9B9B9B),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: _decrementCounter,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '$_counter',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: _incrementCounter,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
