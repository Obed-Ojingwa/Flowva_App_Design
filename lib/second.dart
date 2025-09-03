import 'package:flutter/material.dart';





import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF2F5), // light pinkish background
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Cards
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: const [
                  SubscriptionCard(
                    logo: "assets/images/framer.png",
                    name: "Framer",
                    price: "\$12",
                    billing: "Billed in 4 days",
                    showActions: true,
                  ),
                  SubscriptionCard(
                    logo: "assets/images/figma.png",
                    name: "Figma",
                    price: "\$12",
                    billing: "Billed in 9 days",
                  ),
                  SubscriptionCard(
                    logo: "assets/images/notion.png",
                    name: "Notion",
                    price: "\$12",
                    billing: "Billed in 16 days",
                  ),
                  SubscriptionCard(
                    logo: "assets/images/chatgpt.png",
                    name: "ChatGPT",
                    price: "\$12",
                    billing: "Billed in 24 days",
                  ),
                ],
              ),
            ),

            // Title + Subtitle
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Text(
                    "Keep track of every\nsubscription",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Stay on top of what you pay for.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            // Pagination dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: index == 0 ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.black87 : Colors.black26,
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
            const SizedBox(height: 25),

            // Get started button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 6,
                  shadowColor: Colors.black26,
                ),
                onPressed: () {
                  // TODO: Add your next navigation
                },
                child: const Text(
                  "Get started",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Subscription Card widget
class SubscriptionCard extends StatelessWidget {
  final String logo;
  final String name;
  final String price;
  final String billing;
  final bool showActions;

  const SubscriptionCard({
    super.key,
    required this.logo,
    required this.name,
    required this.price,
    required this.billing,
    this.showActions = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFDF0F3), Color(0xFFEDE4F7)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row: Logo + Name + Price
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(logo, width: 32, height: 32),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),
          Text(
            billing,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black54,
            ),
          ),

          if (showActions) ...[
            const SizedBox(height: 15),
            Row(
              children: const [
                Expanded(
                  child: ActionButton(
                    label: "View",
                    textColor: Color(0xFF8E44AD),
                    bgColor: Color(0xFFF3E9FB),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ActionButton(
                    label: "Remind",
                    textColor: Colors.black54,
                    bgColor: Color(0xFFF0F0F0),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ActionButton(
                    label: "Cancel",
                    textColor: Colors.redAccent,
                    bgColor: Color(0xFFFDE2E4),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

// Action buttons (View, Remind, Cancel)
class ActionButton extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color bgColor;

  const ActionButton({
    super.key,
    required this.label,
    required this.textColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50], // soft background
      appBar: AppBar(
        title: const Text("Second Screen"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // A card with rounded corners & shadow
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Welcome to the Second Screen 🎉",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Another card (example content)
            Card(
              color: Colors.lightBlue[100],
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "This card shows extra info. You can add more here.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Spacer(),

            // Buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              onPressed: () {
                // go back to HomeScreen
                Navigator.pop(context);
              },
              child: const Text("⬅ Back to Home",
                  style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                side: const BorderSide(color: Colors.blueAccent),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Extra Action triggered")),
                );
              },
              child: const Text("Do Something",
                  style: TextStyle(fontSize: 16, color: Colors.blueAccent)),
            ),
          ],
        ),
      ),
    );
  }
}
*/


/*
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDE2E4), // soft gradient-like bg
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Subscription cards
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: const [
                  SubscriptionCard(
                    logo: "assets/images/framer.png",
                    name: "Framer",
                    price: "\$12",
                    billing: "Billed in 4 days",
                    showActions: true,
                  ),
                  SubscriptionCard(
                    logo: "assets/images/figma.png",
                    name: "Figma",
                    price: "\$12",
                    billing: "Billed in 9 days",
                  ),
                  SubscriptionCard(
                    logo: "assets/images/notion.png",
                    name: "Notion",
                    price: "\$12",
                    billing: "Billed in 16 days",
                  ),
                  SubscriptionCard(
                    logo: "assets/images/chatgpt.png",
                    name: "ChatGPT",
                    price: "\$12",
                    billing: "Billed in 24 days",
                  ),
                ],
              ),
            ),

            // Title + Subtitle
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Text(
                    "Keep track of every\nsubscription",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Stay on top of what you pay for.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            // Pagination Dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: index == 0 ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.black87 : Colors.black26,
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),

            // Get Started button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadowColor: Colors.black26,
                  elevation: 6,
                ),
                onPressed: () {
                  // TODO: Add navigation logic here
                },
                child: const Text(
                  "Get started",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Subscription Card
class SubscriptionCard extends StatelessWidget {
  final String logo;
  final String name;
  final String price;
  final String billing;
  final bool showActions;

  const SubscriptionCard({
    super.key,
    required this.logo,
    required this.name,
    required this.price,
    required this.billing,
    this.showActions = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFDE2E4), Color(0xFFFAD2E1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row: logo + name + price
          Row(
            children: [
              Image.asset(logo, width: 32, height: 32),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            billing,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black54,
            ),
          ),

          if (showActions) ...[
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _ActionButton(label: "View", color: Colors.purpleAccent),
                _ActionButton(label: "Remind", color: Colors.grey),
                _ActionButton(label: "Cancel", color: Colors.redAccent),
              ],
            ),
          ]
        ],
      ),
    );
  }
}

// Action buttons (View, Remind, Cancel)
class _ActionButton extends StatelessWidget {
  final String label;
  final Color color;

  const _ActionButton({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}*/






/*import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF7DDE0), Color(0xFFE8E2F9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),

              // Subscription cards
              SubscriptionCard(
                logo: "assets/images/framer.png",
                title: "Framer",
                price: "\$12",
                billed: "Billed in 4 days",
                actions: const ["View", "Remind", "Cancel"],
              ),
              const SizedBox(height: 16),
              SubscriptionCard(
                logo: "assets/images/figma.png",
                title: "Figma",
                price: "\$12",
                billed: "Billed in 9 days",
              ),
              const SizedBox(height: 16),
              SubscriptionCard(
                logo: "assets/images/notion.png",
                title: "Notion",
                price: "\$12",
                billed: "Billed in 16 days",
              ),
              const SizedBox(height: 16),
              SubscriptionCard(
                logo: "assets/images/chatgpt.png",
                title: "ChatGPT",
                price: "\$12",
                billed: "Billed in 24 days",
              ),

              const Spacer(),

              const Text(
                "Keep track of every subscription",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Stay on top of what you pay for.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dot(true),
                  _dot(false),
                  _dot(false),
                ],
              ),

              const SizedBox(height: 24),

              // Get started button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.black, Colors.black87],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: const Center(
                  child: Text(
                    "Get started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dot(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: active ? Colors.black87 : Colors.black26,
        shape: BoxShape.circle,
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final String logo;
  final String title;
  final String price;
  final String billed;
  final List<String>? actions;

  const SubscriptionCard({
    super.key,
    required this.logo,
    required this.title,
    required this.price,
    required this.billed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFF7F4F9), Color(0xFFEFE5F9)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(logo, width: 28, height: 28),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    billed,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (actions != null) ...[
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: actions!
                  .map(
                    (a) => Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: a == "Cancel"
                          ? Colors.red.withOpacity(0.2)
                          : Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        a,
                        style: TextStyle(
                          fontSize: 14,
                          color: a == "Cancel"
                              ? Colors.red
                              : Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              )
                  .toList(),
            )
          ]
        ],
      ),
    );
  }
}*/




/*

import 'package:flutter/material.dart';

void main() {
  runApp(const SubscriptionApp());
}

class SubscriptionApp extends StatelessWidget {
  const SubscriptionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SubscriptionScreen(),
    );
  }
}

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF7DDE0), Color(0xFFE8E2F9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),

              // Subscription cards
              SubscriptionCard(
                logo: "assets/images/framer.png",
                title: "Framer",
                price: "\$12",
                billed: "Billed in 4 days",
                actions: const ["View", "Remind", "Cancel"],
              ),
              const SizedBox(height: 16),
              SubscriptionCard(
                logo: "assets/images/figma.png",
                title: "Figma",
                price: "\$12",
                billed: "Billed in 9 days",
              ),
              const SizedBox(height: 16),
              SubscriptionCard(
                logo: "assets/images/notion.png",
                title: "Notion",
                price: "\$12",
                billed: "Billed in 16 days",
              ),
              const SizedBox(height: 16),
              SubscriptionCard(
                logo: "assets/images/chatgpt.png",
                title: "ChatGPT",
                price: "\$12",
                billed: "Billed in 24 days",
              ),

              const Spacer(),

              // Text
              const Text(
                "Keep track of every subscription",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Stay on top of what you pay for.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 24),

              // Page indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dot(true),
                  _dot(false),
                  _dot(false),
                ],
              ),

              const SizedBox(height: 24),

              // Get started button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.black, Colors.black87],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: const Center(
                  child: Text(
                    "Get started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dot(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: active ? Colors.black87 : Colors.black26,
        shape: BoxShape.circle,
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final String logo; // <-- now uses asset logo
  final String title;
  final String price;
  final String billed;
  final List<String>? actions;

  const SubscriptionCard({
    super.key,
    required this.logo,
    required this.title,
    required this.price,
    required this.billed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFF7F4F9), Color(0xFFEFE5F9)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                logo,
                width: 28,
                height: 28,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    billed,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (actions != null) ...[
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: actions!
                  .map(
                    (a) => Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: a == "Cancel"
                          ? Colors.red.withOpacity(0.2)
                          : Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        a,
                        style: TextStyle(
                          fontSize: 14,
                          color: a == "Cancel"
                              ? Colors.red
                              : Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              )
                  .toList(),
            )
          ]
        ],
      ),
    );
  }
}
*/
