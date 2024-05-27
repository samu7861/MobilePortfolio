import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final List<VoidCallback> scrollType;

  const MyAppBar({super.key, required this.scrollType});

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset("assets/images/transparent_logo.png")
          ),
           Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [

                MyTextButton(
                  text: "HOME",
                  icon: Icons.home,
                  typeScroll: scrollType[0],
                ),
                MyTextButton(
                  text: "SKILLS",
                  icon: Icons.person,
                  typeScroll: scrollType[1],
                ),
                MyTextButton(
                  text: "PROYECTS",
                  icon: Icons.work,
                  typeScroll: scrollType[2],
                ),
                MyTextButton(
                  text: "ABOUT ME",
                  icon: Icons.email,
                  typeScroll: scrollType[0],
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.contrast, color: Colors.white, size: 20),
            ),
          )
        ],
      ),
    );
  }
}

class MyTextButton extends StatelessWidget {

  final String text;
  final IconData icon;
  final VoidCallback typeScroll;

  const MyTextButton({
    super.key, required this.text, required this.icon, required this.typeScroll,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (){
        typeScroll();
      }, 
      icon: Icon(icon, color: Colors.white, size: 15),
      label: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Monda',
          fontSize: 15,
        ),
      )
    );
  }
}