import 'package:flutter/material.dart';

import 'home_page.dart';

class StratedPage extends StatefulWidget {
  const StratedPage({super.key});

  @override
  State<StratedPage> createState() => _StratedPageState();
}

class _StratedPageState extends State<StratedPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                height: size.height / 1.8,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Image.asset("assets/medical_team.jpg"),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "All specialist in one app",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 100,
                      ),
                      child: Text(
                        "Find your doctor and make an appointment with one tap",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      })),
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
