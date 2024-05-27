import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          GlassMorphism(myIcon: Icons.android,),
          GlassMorphism(myIcon: Icons.web,),
          GlassMorphism(myIcon: Icons.apple,),
          GlassMorphism(myIcon: Icons.window,),
        ],
      )
    );
  }
}

class GlassMorphism extends StatelessWidget {

  final IconData? myIcon;

  const GlassMorphism({
    super.key, required this.myIcon,
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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                  const Placeholder(
                      fallbackHeight: 200,
                    ),                                     
                  const SizedBox(height: 30,),
                  Text(
                    "ToktTik FLutter",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "A pryect where i try to clone the TikTok app using Flutter and other things for create better",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(  
                        width: 200,              
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "Learn More",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(myIcon)
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
  }
}

