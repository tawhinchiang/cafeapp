import 'package:flutter/material.dart';

class BannerCoffe extends StatelessWidget {
  const BannerCoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 13,
          left: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              'PROMO',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          left: 35,
          child: Stack(
            children: [
              // Fundo preto para metade da altura das letras
              Positioned(
                bottom: 5,
                left: 0,
                child: Container(
                  width: 135,
                  height: 22, // metade da altura das letras
                  decoration: BoxDecoration(
                    color: const Color(0xff1C1C1C),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                child: Container(
                  width: 200,
                  height: 22, // metade da altura das letras
                  decoration: BoxDecoration(
                    color: const Color(0xff1C1C1C),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              // Texto
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: const Text(
                  'Buy one get\none Free',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
