import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<GoogleSignInAccount?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? user = await _googleSignIn.signIn();
      if (user != null) {
        log("Usuário logado: ${user.displayName}");
      }
      return user;
    } catch (error) {
      log("Erro ao fazer login: $error");
      return null;
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    log("Usuário desconectado.");
  }
}
