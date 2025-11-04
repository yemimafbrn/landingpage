import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landingpage_hotel/emptyTable.dart';

class LandingPage extends StatefulWidget {
  final String? table;

  const LandingPage({super.key, required this.table});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    print('🧾 Table parameter: ${widget.table}');

    if (widget.table == null || widget.table!.isEmpty) {
      return const EmptyTableScreen();
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.5),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Welcome to",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        const Text(
                          "The Hotel,",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "With breathtaking views of the Indian Ocean and tropical gardens, "
                          "our five-star resort presents itself as a majestic open-air theatre.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _buildButton('Browse our Facilities'),

                        const SizedBox(height: 60),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white70,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            context.go('/menu/${widget.table}');
          },
          child: Text(text, style: const TextStyle(fontSize: 14, height: 1.3)),
        ),
      ),
    );
  }
}
