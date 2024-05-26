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
           Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [

                TextButton.icon(
                  onPressed: (){}, 
                  icon: const Icon( Icons.account_box_outlined),
                  label: const Text('Text Icon'),
                ),


                const SizedBox(width: 20),
                const Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  'Projects',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}