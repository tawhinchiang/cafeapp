import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  String? photoUrl;
  String? username;
  Future<GoogleSignInAccount?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? user = await _googleSignIn.signIn();
      if (user != null) {
        username = user.displayName;
        photoUrl = user.photoUrl;
        log("Usuário logado: ${user.displayName}");
        log("Usuário logado: ${photoUrl.toString()}");
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
