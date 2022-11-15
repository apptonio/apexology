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
          future: http.getMaps(),
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

            String map1 = snapshot.data!.battleRoyale.current.map;
            String map2 = snapshot.data!.ranked.current.map;
            String map3 = snapshot.data!.arenas.current.map;
            String map4 = snapshot.data!.arenasRanked.current.map;
            String map5 = snapshot.data!.ltm.current.map;

            return Column(children: [Text(map1), Text(map2), Text(map3), Text(map4), Text(map5)]);
          },
        ),
      ),
    );
  }
}
