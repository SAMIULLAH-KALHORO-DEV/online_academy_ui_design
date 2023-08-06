import 'package:flutter/material.dart';
import 'package:online_academy_ui_design/widgets/utils.dart';

class MainContainer extends StatelessWidget {
  MainContainer({
    super.key,
  });
  final textStyle = TextStyle(
      color: Colors.black54.withOpacity(0.4), fontWeight: FontWeight.bold);
  final double _value = 60;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
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
                        color: const Color(0xFFF3B044)),
                    child: Text("Your main course", style: TextStyling().h1)),
                const Icon(Icons.line_axis)
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Marketing in B2B",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
