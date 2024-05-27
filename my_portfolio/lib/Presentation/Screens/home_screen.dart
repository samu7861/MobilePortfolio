import 'package:flutter/material.dart';
import 'package:my_portfolio/Presentation/widgets/home_appbar.dart';
import 'package:my_portfolio/Presentation/Screens/Home/first_page.dart';
import 'package:my_portfolio/Presentation/Screens/skills/second_page.dart';
import 'package:my_portfolio/Presentation/Screens/proyects/third_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    ScrollController _scrollController = ScrollController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 42, 64),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),           
            slivers: <Widget>[
              SliverList(               
                delegate: SliverChildListDelegate(                  
                  [
                    const FirstPage(),
                    const SecondPage(),
                    const ThirdPage(),
                    //const FourthPage(),
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

