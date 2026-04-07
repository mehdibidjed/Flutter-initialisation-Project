import 'package:flutter/material.dart';
import '../widgets/collectible_card.dart';

class HomeScreen extends StatelessWidget {
  final bool isMorning;

  const HomeScreen({super.key, required this.isMorning});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();


    String date = now.toString().split(" ")[0];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Example"),
        leading: Icon(
          isMorning ? Icons.wb_sunny : Icons.nightlight_round,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/men/10.jpg",
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isMorning ? "Good Morning " : "Good Evening ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Today: $date",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 40),

            const CollectibleCard(),
          ],
        ),
      ),
    );
  }
}