import 'package:apexology/constants/theme.dart';
import 'package:apexology/models/bundles/bundles.dart';
import 'package:apexology/services/http_service.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: http.getBundles(),
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

            List<Bundles> list = snapshot.data!;

            return ListView.builder(itemBuilder: ((context, index) {
               
              Bundles bundles = list[index];
              return Text(bundles.bundle);
            }),itemCount: list.length);
          },
        ),
      ),
    );
  }
}
