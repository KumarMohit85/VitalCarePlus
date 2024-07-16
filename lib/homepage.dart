import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:vital_plus/data/patient_data.dart';
import 'package:vital_plus/models/patient.dart';

enum Info { temperature, spo2, pulserate }

extension InfoExtension on Info {
  String get toStringValue {
    switch (this) {
      case Info.temperature:
        return 'Temperature';
      case Info.spo2:
        return 'SpO2';
      case Info.pulserate:
        return 'PulseRate';
      default:
        return '';
    }
  }

  static Info fromStringValue(String value) {
    switch (value) {
      case 'Temperature':
        return Info.temperature;
      case 'SpO2':
        return Info.spo2;
      case 'PulseRate':
        return Info.pulserate;
      default:
        throw ArgumentError('Unknown enum value: $value');
    }
  }

  bool isDanger(double value) {
    switch (this) {
      case Info.temperature:
        return value < 89.6 || value > 103;
      case Info.spo2:
        return value < 92;
      case Info.pulserate:
        return value < 60 || value > 120;
      default:
        throw ArgumentError('Unknown enum value: $this');
    }
  }

  List<Color> getGradientColors() {
    switch (this) {
      case Info.temperature:
        return [
          Color.fromARGB(255, 227, 206, 17),
          const Color.fromARGB(255, 196, 17, 4)
        ];
      case Info.spo2:
        return [Colors.white, Colors.blue];
      case Info.pulserate:
        return [Colors.yellow, const Color.fromARGB(255, 42, 168, 46)];
    }
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Patient> patientsByTemperature = List.from(patients)
    ..sort((a, b) => b.bodyTemperature.compareTo(a.bodyTemperature));
  List<Patient> patientsBySpo2 = List.from(patients)
    ..sort((a, b) => a.spo2.compareTo(b.spo2));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/background3.png"), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
              top: 20,
              left: 10,
              right: 10,
              bottom: 70,
              child: _selectedIndex == 0
                  ? _getList(patientsByTemperature)
                  : _getList(patientsBySpo2)),
          // Glassmorphism container

          _getBottomBar()
        ],
      ),
    );
  }

  Widget _getBottomBar() {
    double h = 60;
    double w = 95;
    double sw = 6;

    return Positioned(
        bottom: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: sw,
            ),
            InkWell(
              onTap: () {
                _onItemTapped(0);
              },
              child: _getContainer(
                  h,
                  w,
                  20,
                  _getNavBarItem(
                      Icons.thermostat, "Temperature", _selectedIndex == 0),
                  10.0),
            ),
            SizedBox(
              width: sw,
            ),
            InkWell(
              onTap: () {
                _onItemTapped(1);
              },
              child: _getContainer(
                  h,
                  w,
                  20,
                  _getNavBarItem(
                      Icons.opacity_outlined, "SpO2", _selectedIndex == 1),
                  10.0),
            ),
            SizedBox(
              width: sw,
            ),
            InkWell(
              onTap: () {
                _onItemTapped(2);
              },
              child: _getContainer(h, w, 20,
                  _getNavBarItem(Icons.add, "Add", _selectedIndex == 2), 10.0),
            ),
            SizedBox(
              width: sw,
            ),
            InkWell(
              onTap: () {
                _onItemTapped(3);
              },
              child: _getContainer(
                  h,
                  w,
                  20,
                  _getNavBarItem(
                      Icons.person_2, "Profile", _selectedIndex == 3),
                  10.0),
            ),
            SizedBox(
              width: sw,
            ),
          ],
        ));
  }

  Widget _getContainer(double height, double width, double borderRadius,
      Widget child, double blur) {
    return GlassmorphicContainer(
      width: width,
      height: height,
      borderRadius: borderRadius,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.05),
        ],
        stops: [0.1, 1],
      ),
      border: 1.0,
      blur: blur,
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.2),
          Colors.white.withOpacity(0.2),
        ],
      ),
      child: child,
    );
  }

  Widget _getNavBarItem(IconData icon, String title, bool isSelected) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Icon(icon, color: Colors.white, size: isSelected ? 25 : 19),
        _getText(title, isSelected ? 15 : 12,
            isSelected ? FontWeight.w900 : FontWeight.normal),
      ],
    ));
  }

  Widget _getText(String text, double size,
      [FontWeight ft = FontWeight.normal]) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: Colors.white, fontWeight: ft),
    );
  }

  Widget _getList(List<Patient> list) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                Patient patient = list[index];
                return _getCard(patient);
              }),
        ),
      ],
    );
  }

  Widget _getCard(Patient patient) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: _getContainer(
          202,
          MediaQuery.of(context).size.width,
          28,
          Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: _getTopBar(patient.isdanger, 15, 40)),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8, left: 8, right: 8, bottom: 8),
                        child: Image.asset(
                          patient.gender == "Male"
                              ? "assets/images/man.png"
                              : "assets/images/woman.png",
                          height: 80,
                          width: 80,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      getTextOver("BedNo: ",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      getTextOver("${patient.bedNo}",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _linearProgressIndicator(
                          100, patient.spo2.toDouble(), Info.spo2),
                      _linearProgressIndicator(
                          106, patient.bodyTemperature, Info.temperature),
                      _linearProgressIndicator(
                          300, patient.pulseRate.toDouble(), Info.pulserate),
                    ],
                  )
                ],
              )
            ],
          ),
          4.0),
    );
  }

  Widget _getBar(
      bool isDanger, double height, double width, List<Color> colors) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 30, top: 13),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Widget _getTopBar(bool isDanger, double height, double width) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 30, top: 13),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: isDanger ? Colors.red : Colors.green,
            borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Widget _linearProgressIndicator(double full, double value, Info info) {
    double percentage = (value / full) * 100;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getTextOver(info.toStringValue,
            fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
        Row(
          children: [
            Stack(children: [
              _getContainer(12, 250, 20, Text("data"), 4.0),
              Positioned(
                  bottom: 0,
                  child: _getBar(info.isDanger(value), 12, percentage * 2.5,
                      info.getGradientColors()))
            ]),
            SizedBox(
              width: 7,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: info.isDanger(value) ? Colors.red : Colors.green,
                  borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
        Row(children: [
          SizedBox(
            width: 185,
          ),
          getTextOver("$value/$full",
              fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500)
        ])
      ],
    );
  }

  Widget getTextOver(String text,
      {double fontSize = 12,
      FontWeight fontWeight = FontWeight.w400,
      Color color = Colors.black}) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
