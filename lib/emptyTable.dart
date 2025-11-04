import 'package:flutter/material.dart';

class EmptyTableScreen extends StatefulWidget {
  const EmptyTableScreen({super.key});

  @override
  State<EmptyTableScreen> createState() => _EmptyTableScreenState();
}

class _EmptyTableScreenState extends State<EmptyTableScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/icons/emptyJwt.gif'),
            ),
            const Divider(color: Colors.transparent),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Please scan the QR again,\nyou haven't got the table number",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
