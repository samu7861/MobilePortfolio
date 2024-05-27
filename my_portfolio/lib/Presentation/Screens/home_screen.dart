import 'package:flutter/material.dart';
import 'package:my_portfolio/Presentation/widgets/home_appbar.dart';
import 'package:my_portfolio/Presentation/Screens/Home/first_page.dart';
import 'package:my_portfolio/Presentation/Screens/skills/second_page.dart';
import 'package:my_portfolio/Presentation/Screens/proyects/third_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<GlobalKey> keys = [
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];
    final ScrollController scrollController = ScrollController();

    void scrollToWidget(GlobalKey key) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    }

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
            controller: scrollController,
            physics: const BouncingScrollPhysics(),           
            slivers: <Widget>[
              SliverList(               
                delegate: SliverChildListDelegate(                  
                  [
                    FirstPage(key: keys[0],),
                    SecondPage(key: keys[1],),
                    ThirdPage(key: keys[2],),
                    //const FourthPage(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 40,
            right: 40,
            top: 20,
            child: MyAppBar(
              scrollType: [
                () => scrollToWidget(keys[0]),
                () => scrollToWidget(keys[1]),
                () => scrollToWidget(keys[2]),
                // Add more if you have more widgets
              ],
            ),          ),
        ],
      ),
    );
  }
}


