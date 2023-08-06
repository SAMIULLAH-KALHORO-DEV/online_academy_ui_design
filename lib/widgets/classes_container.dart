import 'package:flutter/material.dart';

class ClassesContainer extends StatelessWidget {
  final h1Style =
      const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  final h2Style = TextStyle(
      color: Colors.black54.withOpacity(0.7),
      fontWeight: FontWeight.w400,
      fontSize: 12);
  final String h1Text;
  final String dayDate;
  final String time;
  final String imaage;
  final String lectures;

  ClassesContainer({
    super.key,
    required this.h1Text,
    required this.dayDate,
    required this.time,
    required this.imaage,
    required this.lectures,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
      padding: const EdgeInsets.all(10),
      height: 240,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0.1,
                blurRadius: 5,
                color: Colors.black.withOpacity(0.1))
          ]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage("$imaage")),
            ),
            Text(h1Text, style: h1Style),
            Row(children: [
              const Icon(Icons.date_range_outlined,
                  color: Color(0xFFF9D9A3), size: 20),
              const SizedBox(width: 5),
              Text(dayDate, style: h2Style),
            ]),
            Row(children: [
              const Icon(Icons.alarm, color: Color(0xFFF9D9A3), size: 20),
              const SizedBox(width: 5),
              Text(time, style: h2Style),
            ]),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                lectures,
                style: h2Style,
              ),
            )
          ]),
    );
  }
}
