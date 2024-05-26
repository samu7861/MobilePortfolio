import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 42, 64),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: 768,
                      width: double.maxFinite,
                      color: const Color.fromARGB(255, 26, 42, 64),
                    ),
                    Container(
                      height: 768,
                      width: double.maxFinite,
                      color: const Color.fromARGB(255, 64, 26, 41),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Positioned(
            left: 40,
            right: 40,
            top: 20,
            child: MyAppBar(),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xFF17263D),
              Color(0xFF119190),
              Color(0xFF0C1729)
            ],
          ),
        borderRadius: BorderRadius.circular(40)
      ),
    );
  }
}