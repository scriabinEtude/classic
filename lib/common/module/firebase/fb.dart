import 'package:classic/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

class FB {
  static init() async {
    await _initApp();
    await _auth();
  }

  static _initApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static _auth() async {
    // FirebaseAuth.instance.useAuthEmulator("10.0.2.2", 9099);
  }
}
