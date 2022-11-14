import 'package:apexology/constants/theme.dart';
import 'package:apexology/services/http_service.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: http.getStats(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error loading news...'),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(color: theme.focusColor),
              );
            }

            String playerName = snapshot.data!.global.name;

            return SizedBox(height: 500, child: Text(playerName));
          },
        ),
      ),
    );
  }
}
