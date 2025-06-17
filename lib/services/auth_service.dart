import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipe_app/models/app_user.dart';

class AuthService {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static String? _authError;

  static String? get error => _authError;

  static Future<AppUser?> signUp(String email, String password) async {
    try {
      final UserCredential cred = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      if (cred.user != null) {
        return AppUser(uid: cred.user!.uid, email: cred.user!.email!);
      }

      return null;
    } catch (e) {
      _authError = parseError(e.toString());
      return null;
    }
  }

  static Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  static Future<AppUser?> signin(String email, String password) async {
    try {
      final UserCredential cred = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      if (cred.user != null) {
        return AppUser(uid: cred.user!.uid, email: cred.user!.email!);
      }

      return null;
    } catch (e) {
      _authError = parseError(e.toString());
      return null;
    }
  }
}

String parseError(String error) {
  List<String> errorArr = error.split(" ");
  errorArr.removeAt(0);

  return errorArr.join(" ");
}
