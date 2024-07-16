import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:vital_plus/data/patient_data.dart';
import 'package:vital_plus/models/patient.dart';

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
    ..sort((a, b) => a.bodyTemperature.compareTo(b.bodyTemperature));
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
                    "assets/images/background2.jpg"), // Replace with your image path
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
                ? _getByTemperature()
                : _getContainer(
                    200,
                    400,
                    20,
                    Center(
                      child: _getText("SPO2", 30),
                    )),
          ),
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
                      Icons.thermostat, "Temperature", _selectedIndex == 0)),
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
                      Icons.opacity_outlined, "SpO2", _selectedIndex == 1)),
            ),
            SizedBox(
              width: sw,
            ),
            InkWell(
              onTap: () {
                _onItemTapped(2);
              },
              child: _getContainer(h, w, 20,
                  _getNavBarItem(Icons.add, "Add", _selectedIndex == 2)),
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
                      Icons.person_2, "Profile", _selectedIndex == 3)),
            ),
            SizedBox(
              width: sw,
            ),
          ],
        ));
  }

  Widget _getContainer(
      double height, double width, double borderRadius, Widget child) {
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
      blur: 4.0,
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

  Widget _getByTemperature() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: patientsByTemperature.length,
              itemBuilder: (context, index) {
                Patient patient = patientsByTemperature[index];
                return _getCard(patient.gender);
              }),
        ),
      ],
    );
  }

  Widget _getCard(String gender) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: _getContainer(
          200,
          MediaQuery.of(context).size.width,
          28,
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, left: 8, right: 8, bottom: 8),
                    child: Image.asset(
                      gender == "Male"
                          ? "assets/images/man.png"
                          : "assets/images/woman.png",
                      height: 80,
                      width: 80,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }

  // Widget _getBar(String status) {
  //   return Container(decoration: ,);
  // }
}
