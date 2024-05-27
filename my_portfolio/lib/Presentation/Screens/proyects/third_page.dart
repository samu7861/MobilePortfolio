import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 768,
      width: double.infinity,
      child: Center(
        child: GlassMorphism(),
      ),
      );
  }
}





class GlassMorphism extends StatelessWidget {
  const GlassMorphism({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: 300,
        height: 500,
        borderRadius: 0,
        blur: 20,
        alignment: Alignment.center,
        border: 2,
        linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFFffffff).withOpacity(0.1),
            const Color(0xFFFFFFFF).withOpacity(0.05),
          ],
        ),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFFffffff).withOpacity(0.5),
            const Color((0xFFFFFFFF)).withOpacity(0.5),
          ],
        ),
    
      );
  }
}