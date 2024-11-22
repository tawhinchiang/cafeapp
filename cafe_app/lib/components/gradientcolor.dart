import 'dart:developer';
import 'package:cafe_app/components/locationInfo.dart';
import 'package:cafe_app/components/search_filter.dart';
import 'package:cafe_app/services/auth_google.dart';
import 'package:flutter/material.dart';

class HeaderSecondPage extends StatefulWidget {
  const HeaderSecondPage({
    super.key,
  });

  @override
  State<HeaderSecondPage> createState() => _GradientLinearState();
}

class _GradientLinearState extends State<HeaderSecondPage> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final user = await authService.signInWithGoogle();

    if (user != null) {
      setState(() {
        authService.photoUrl = user.photoUrl;
      });
    }
    log('Usuário logado: ${authService.username}');
    log('URL da foto: ${authService.photoUrl}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF131313),
            Color(0xFF2A2A2A),
            Color(0xFF2A2A2A),
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 280,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Espaço para simular o status bar
          Padding(
            padding: const EdgeInsets.only(top: 60.0, right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const LocationInfo(),
                SizedBox(
                  width: 44,
                  height: 44,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: authService.photoUrl != null
                        ? NetworkImage(authService.photoUrl!)
                        : null,
                    child: authService.photoUrl == null
                        ? const Icon(Icons.person,
                            size: 25, color: Colors.white)
                        : null,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xFF313131),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: const SearchAndFilter(),
            ),
          ),
        ],
      ),
    );
  }
}
