import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 768,
      width: double.infinity,
      color: const Color.fromARGB(255, 26, 42, 64),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", height: 246,),
            const SizedBox(width: 20),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hola, soy Samuel",
                  style: TextStyle(
                    fontFamily: 'Mandali',
                    color: Color.fromARGB(121, 255, 255, 255),
                    fontSize: 24,
                  ),
                ),
                Text(
                  "MOBILE DEVELOPER",
                  style: TextStyle(
                    fontFamily: 'Mandali',
                    color: Colors.white,
                    fontSize: 48,
                  ),
                ),
                Text(
                  "Especializado en Flutter",
                  style: TextStyle(
                    fontFamily: 'Mandali',
                    color: Color.fromARGB(121, 255, 255, 255),
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1, // 50% of screen width
            ),
            SizedBox(
              height: 200,
              child: Column(

                children: [
                  InkWell(
                    autofocus: true,       
                    onTap: () {
                      // Aquí puedes manejar el evento de toque para icon1
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/icon1.png", height: 50,),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Aquí puedes manejar el evento de toque para icon2
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/icon2.png", height: 50,),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Aquí puedes manejar el evento de toque para icon3
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/icon3.png", height: 50,),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      
    );
  }
}
