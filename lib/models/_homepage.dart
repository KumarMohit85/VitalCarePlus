import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:vital_plus/common%20widgets/card_container.dart';
import 'package:vital_plus/common%20widgets/glass_container.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background3.png"),
                  fit: BoxFit.cover)),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 50),
          height: height - 10,
          color: Colors.transparent,
          child: ListView(
            children: [
              for (int i = 0; i < 6; i++)
                Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: CardContainer())
            ],
          ),
        ),
        Positioned(
          bottom: 15,
          child: Container(
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            height: height * 0.07,
            width: width * 0.94,
            color: Colors.transparent,
            child: Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Padding(
                      padding: const EdgeInsets.only(right: 4.5),
                      child: GlassContainer(
                        height: height * 0.06,
                        width: width / 4.5,
                        borderRadius: 20,
                        blur: 5.0,
                        border: 1,
                      ))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
