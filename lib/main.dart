import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landingpage_hotel/router.dart' show router;
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late AppLifecycleState state;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp.router(
      builder: (context, child) {
        return Overlay(
          initialEntries: [OverlayEntry(builder: (context) => child!)],
        );
      },
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme(textTheme)),
      title: 'Landing Page',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
