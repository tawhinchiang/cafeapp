import 'package:cafe_app/components/addnotes.dart';
import 'package:cafe_app/components/addproducts.dart';
import 'package:cafe_app/components/deliveryaddres.dart';
import 'package:cafe_app/components/disocunt.dart';
import 'package:cafe_app/components/paymentsumary.dart';
import 'package:cafe_app/components/pickupandelivery.dart';
import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  final String imageproduto;
  final String nomeproduto;
  final String descrprod;
  final String price;

  const OrderDetail(
      {super.key,
      required this.imageproduto,
      required this.nomeproduto,
      required this.descrprod,
      required this.price});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffF9F9F9),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Center(
              child: Text(
                'Pedido',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          body: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 0,
              ),
              child: Column(children: [
                const PickUpAndDelivery(),
                const SizedBox(height: 31),
                const DeliveryAddres(),
                const SizedBox(height: 10),
                const AddNotes(),
                const SizedBox(height: 15),
                const SizedBox(
                  width: 315,
                  child: Divider(
                    thickness: 0.8,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                AddProducts(
                  imageproduto: widget.imageproduto,
                  nomeproduto: widget.nomeproduto,
                  descrprod: widget.descrprod,
                  price: widget.price,
                ),
                const SizedBox(
                  height: 21,
                ),
                const SizedBox(
                  width: 375,
                  child: Divider(
                    height: 3,
                    thickness: 5,
                    color: Color(0xffF4F4F4),
                  ),
                ),
                const Discount(),
                PaymentSumary(
                  price: widget.price,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.transparent,
                      border: Border.all(
                          color: const Color(0xffF1F1F1), width: 1.5)),
                  // color: ,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 19),
                      Row(
                        children: [
                          const SizedBox(width: 60), // Adiciona margem esquerda
                          Image.asset(
                            'assets/images/moneys.png',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(
                              width:
                                  22), // Espaço entre a imagem e o container "Cash"
                          SizedBox(
                            width: 112,
                            height: 24,
                            child: Row(
                              children: [
                                Container(
                                  width: 51,
                                  height: 24,
                                  // padding: const EdgeInsets.symmetric(
                                  //     vertical: 8.0, horizontal: 16.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffC67C4E),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Cash',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  '\$5.53',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 118,
                            ),
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: const Color(0xff808080),
                                  borderRadius: BorderRadius.circular(20)),
                              child: IconButton(
                                padding: const EdgeInsets.all(0),
                                color: Colors.white,
                                icon: const Icon(Icons.more_horiz),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 22),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: SizedBox(
                          width: MediaQuery.of(context)
                              .size
                              .width, // Ajusta a largura para ocupar toda a largura disponível
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFC67C4E),
                              fixedSize: const Size(315, 55),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => MapsPage()));
                            },
                            child: const Text(
                              'Pedido',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Espaço abaixo do botão
                    ],
                  ),
                ),
              ]))),
    );
  }
}
