import 'package:flutter/material.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Procurar Café',
              hintStyle: TextStyle(color: Colors.white54),
              prefixIcon: Icon(Icons.search, color: Colors.white),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(16.0),
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
          child: Container(
            width: 40,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xffC67C4E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: const ImageIcon(
                AssetImage('assets/images/filtro.png'),
                size: 40,
                color: Colors.white,
              ),
              onPressed: () {
                // Ação do botão de filtro
              },
            ),
          ),
        ),
      ],
    );
  }
}
