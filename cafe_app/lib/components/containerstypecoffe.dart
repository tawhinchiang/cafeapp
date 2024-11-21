import 'package:flutter/material.dart';

class ContainerTypeCoffe extends StatefulWidget {
  final String coffeeType;
  final String description;
  final String imageUrl;
  final String price;
  const ContainerTypeCoffe(
      {super.key,
      required this.coffeeType,
      required this.description,
      required this.imageUrl,
      required this.price});

  @override
  State<ContainerTypeCoffe> createState() => _ContainerTypeCoffeState();
}

class _ContainerTypeCoffeState extends State<ContainerTypeCoffe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 238,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 132,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.coffeeType,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' ${widget.price}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Color(0xffC67C4E),
                          size: 24,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
