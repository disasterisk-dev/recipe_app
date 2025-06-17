import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_app/components/text_widgets.dart';
import 'package:recipe_app/screens/welcome.dart';
import 'package:recipe_app/firebase_options.dart';
import 'package:recipe_app/models/app_user.dart';
import 'package:recipe_app/providers/auth_provider.dart';
import 'package:recipe_app/screens/home.dart';
import 'package:recipe_app/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(
    child: App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
      home: Consumer(builder: (context, ref, child) {
        final AsyncValue<AppUser?> user = ref.watch(authProvider);

        return user.when(
          data: (data) {
            if (data != null) {
              return const Home();
            }
            return const Welcome();
          },
          error: (error, _) => const ErrorText("Error loading user."),
          loading: () => const BodyText("Loading..."),
        );
      }),
    );
  }
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red[300],
              child: const Text("Hello world"),
            ),
            Container(
              color: Colors.green[400],
              child: const Text("Hello world"),
            ),
            Container(
              color: Colors.blue[500],
              child: const Text("Hello world"),
            ),
          ],
        ),
      ),
    );
  }
}
