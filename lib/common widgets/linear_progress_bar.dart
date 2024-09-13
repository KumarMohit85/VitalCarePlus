import 'package:flutter/material.dart';
import 'package:vital_plus/common%20widgets/glass_container.dart';
import 'package:vital_plus/homepage.dart';
import 'package:vital_plus/structures/structures.dart';

class LinearProgressBar extends StatefulWidget {
  LinearProgressBar(
      {super.key, required this.full, required this.value, required this.info});
  double full, value;
  Info info;
  @override
  State<LinearProgressBar> createState() => _LinearProgressBarState();
}

class _LinearProgressBarState extends State<LinearProgressBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double percentage = (widget.value / widget.full) * 100;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.info.toStringValue,
          style: TextStyle(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Stack(
              children: [
                GlassContainer(
                    height: height * 0.014,
                    width: width * 0.56,
                    borderRadius: 20,
                    blur: 6,
                    border: 0),
                Container(
                  height: height * 0.014,
                  width: width * 0.56 * percentage / 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: widget.info.getGradientColors(),
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              height: height * 0.012,
              width: height * 0.012,
              decoration: BoxDecoration(
                  color: widget.info.isDanger(widget.value)
                      ? Colors.red
                      : Colors.green,
                  borderRadius: BorderRadius.circular(height * 0.006)),
            ),
          ],
        ),
        Row(children: [
          Spacer(
            flex: 12,
          ),
          Text(
            "${widget.value}/${widget.full}",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Spacer(
            flex: 2,
          )
        ])
      ],
    );
  }
}
