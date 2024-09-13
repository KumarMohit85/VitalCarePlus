import 'package:flutter/material.dart';
import 'package:vital_plus/common%20widgets/glass_container.dart';
import 'package:vital_plus/common%20widgets/linear_progress_bar.dart';
import 'package:vital_plus/homepage.dart';
import 'package:vital_plus/structures/structures.dart';

class CardContainer extends StatefulWidget {
  const CardContainer({super.key});

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  bool isExpanded = false;

  Widget childWidget(bool isDanger, String gender, String bedNo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Flexible(
            flex: 4,
            child: Row(
              children: [
                Spacer(
                  flex: 14,
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 16,
                    width: 40,
                    decoration: BoxDecoration(
                        color: isDanger ? Colors.red : Colors.green,
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Flexible(
              flex: 46,
              child: Row(
                children: [
                  Flexible(
                    flex: 6,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 8,
                          child: Image.asset(
                            gender == "Male"
                                ? "assets/images/man.png"
                                : "assets/images/woman.png",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Flexible(
                            flex: 4,
                            child: Text(
                              "Bed No:",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                        Flexible(
                            flex: 4,
                            child: Text(
                              bedNo,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ))
                      ],
                    ),
                  ),
                  Flexible(
                      flex: 15,
                      child: Column(
                        children: [
                          LinearProgressBar(
                            full: 100,
                            value: 50,
                            info: Info.spo2,
                          ),
                          LinearProgressBar(
                            full: 100,
                            value: 50,
                            info: Info.pulserate,
                          ),
                          LinearProgressBar(
                            full: 100,
                            value: 50,
                            info: Info.temperature,
                          )
                        ],
                      ))
                ],
              )),
          Flexible(
              flex: 5,
              child: Column(
                children: [],
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onDoubleTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: isExpanded
          ? GlassContainer(
              height: height / 4.5,
              width: width * 0.9,
              borderRadius: 20,
              blur: 5,
              border: 1,
              child: childWidget(false, "Male", "4"),
            )
          : GlassContainer(
              height: height / 3.5,
              width: width * 0.9,
              borderRadius: 20,
              blur: 5,
              border: 1,
              child: Text("Expanded"),
            ),
    );
  }
}
