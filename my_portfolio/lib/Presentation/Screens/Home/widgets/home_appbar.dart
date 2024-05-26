import 'package:flutter/material.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset("assets/images/transparent_logo.png")
          ),
           const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [

                MyTextButton(
                  text: "HOME",
                  icon: Icons.home,
                ),
                MyTextButton(
                  text: "SKILLS",
                  icon: Icons.person,
                ),
                MyTextButton(
                  text: "PROYECTS",
                  icon: Icons.work,
                ),
                MyTextButton(
                  text: "ABOUT ME",
                  icon: Icons.email,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyTextButton extends StatelessWidget {

  final String text;
  final IconData icon;

  const MyTextButton({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (){}, 
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