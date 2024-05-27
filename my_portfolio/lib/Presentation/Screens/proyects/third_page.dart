import 'dart:ui';

import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 768,
      width: double.infinity,
      alignment: Alignment.center,
      child: const Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          GlassMorphism(),
          GlassMorphism(),
          GlassMorphism(),
          GlassMorphism(),
        ],
      )
    );
  }
}

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Container(
      width: 300,
      height: 500,
      color: Colors.transparent,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4.0,
              sigmaY: 4.0,
            ),
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white.withOpacity(0.13)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [  
                    Colors.white.withOpacity(0.15),           
                    Colors.white.withOpacity(0.05),
                  ]),
            ),
          ),
          const Center(
            child: Text(
              "GlassMorphism", 
              style: TextStyle(
                fontSize: 30, color: Colors.white
                ),
              )
            ),
        ],
      ),
    ),
        );
  }
}




