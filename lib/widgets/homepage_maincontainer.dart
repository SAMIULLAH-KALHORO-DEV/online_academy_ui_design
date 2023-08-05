import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  MainContainer({
    super.key,
  });
  final textStyle = TextStyle(
      color: Colors.black54.withOpacity(0.4), fontWeight: FontWeight.bold);
  final double _value = 14;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 180,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0.3,
                blurRadius: 5,
                color: Colors.black.withOpacity(0.2))
          ]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.all(5),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 234, 200, 86)),
                    child: const Text(
                      "Your main course",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
                Icon(Icons.line_axis)
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Marketing in B2B",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Progress", style: textStyle),
                    Text("${_value.toInt().toString()}%", style: textStyle),
                  ],
                ),
                Slider(
                  secondaryActiveColor: Colors.black,
                  thumbColor: Colors.black,
                  inactiveColor: Colors.amber,
                  value: _value,
                  max: 100,
                  min: 1,
                  onChanged: null,
                  activeColor: Colors.black,
                )
              ],
            ),
          ]),
    );
  }
}
