import 'package:flutter/material.dart';
import 'package:my_portfolio/Presentation/Screens/Home/widgets/home_appbar.dart';

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

