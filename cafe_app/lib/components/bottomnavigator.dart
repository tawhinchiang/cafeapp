import 'package:cafe_app/pages/detalhes.dart';
import 'package:flutter/material.dart';

class BottomNavigate extends StatefulWidget {
  final int selectedIndex;

  const BottomNavigate({
    super.key,
    required this.selectedIndex,
  });

  @override
  State<BottomNavigate> createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color(0xffC67C4E),
          ),
          label: '',
          // Label vazia
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/heart.png',
            height: 18,
            width: 21,
          ),
          label: '', // Label vazia
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/bag2.png',
            height: 18,
            width: 21,
          ),
          label: '', // Label vazia
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/fill1.png',
            height: 18,
            width: 21,
          ),
          label: '', // Label vazia
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.black,
      onTap: _onItemTapped,
      showSelectedLabels: false, // Não mostrar labels selecionadas
      showUnselectedLabels: false, // Não mostrar labels não selecionadas
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    if (selectedIndex == 0) {
      Navigator.pop(context);
    } else if (selectedIndex == 1) {
    } else if (selectedIndex == 2) {
    } else if (selectedIndex == 3) {}
  }
}
