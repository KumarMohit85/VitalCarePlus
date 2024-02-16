import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OxygenScreen extends StatelessWidget {
  const OxygenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.medication_liquid_outlined),
        title: Text('SPO2 level order'),
        actions: [
          Icon(Icons.person),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                height: 200,
                width: 500,
                child: Card(
                  color: const Color.fromARGB(255, 176, 245, 211),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/man.png')),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bed No. : 5",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "Age : 28",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.monitor_heart_outlined),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.thermostat),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(CupertinoIcons.drop),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                height: 200,
                width: 500,
                child: Card(
                  color: Color.fromARGB(255, 245, 109, 152),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/man.png')),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bed No. : 5",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "Age : 28",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.monitor_heart_outlined),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.thermostat),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(CupertinoIcons.drop),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                height: 200,
                width: 500,
                child: Card(
                  color: const Color.fromARGB(255, 176, 245, 211),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/female.jpg')),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bed No. : 5",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "Age : 28",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.monitor_heart_outlined),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.thermostat),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(CupertinoIcons.drop),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                height: 200,
                width: 500,
                child: Card(
                  color: const Color.fromARGB(255, 176, 245, 211),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/man.png')),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bed No. : 5",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "Age : 28",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.monitor_heart_outlined),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.thermostat),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(CupertinoIcons.drop),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                height: 200,
                width: 500,
                child: Card(
                  color: const Color.fromARGB(255, 176, 245, 211),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/man.png')),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bed No. : 5",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "Age : 28",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.monitor_heart_outlined),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(Icons.thermostat),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                Icon(CupertinoIcons.drop),
                                const SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 240,
                                  child: LinearPercentIndicator(
                                    barRadius: Radius.circular(6),
                                    lineHeight: 12,
                                    percent: 10 / 76,
                                    progressColor:
                                        const Color.fromARGB(255, 96, 139, 120),
                                    backgroundColor:
                                        Color.fromARGB(255, 206, 219, 243),
                                  ),
                                ),
                                const SizedBox(
                                  width: 0,
                                ),
                                Text("10"),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
