import 'package:flutter/material.dart';
import 'package:online_academy_ui_design/widgets/utils.dart';

class ScheduleList extends StatelessWidget {
  final String headtext;
  const ScheduleList({super.key, required this.headtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            headtext,
            style: TextStyling().h3,
          ),
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(10),
                color: Pallete.dropBgColor,
                // border: Border.all(color: Pallete.dropBgColor),
              ),
              child: const Icon(
                Icons.keyboard_arrow_down,
                color: Pallete.mainBgColor,
                size: 30,
              )),
        ]),
      ),
    );
  }
}
