import 'package:flutter/material.dart';
import 'package:online_academy_ui_design/widgets/schedulelist.dart';
import 'package:online_academy_ui_design/widgets/utils.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 40, right: 10),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                    // border: Border.all(color: Pallete.dropBgColor),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 30,
                    ),
                  )),
              Text(
                "Schedule",
                style: TextStyling().h1,
              ),
              const Text(''),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                  // border: Border.all(color: Pallete.dropBgColor),
                ),
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF6BA58),
                      // border: Border.all(color: Pallete.dropBgColor),
                    ),
                    child: const Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              const SizedBox(width: 20),
              Text(
                "September",
                style: TextStyling().h3,
              ),
              const Text(''),
            ],
          ),
          const SizedBox(height: 20),
          const ScheduleList(headtext: "Monday, 12th"),
          const ScheduleList(headtext: "Tuesday, 13th"),
          Container(
            height: 70,
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.04),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/image1.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                          // border: Border.all(color: Pallete.dropBgColor),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Schedule",
                        style: TextStyling().h3,
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.alarm, color: Colors.amber),
                      Text("9:00 = 10:30"),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.04),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/image1.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                          // border: Border.all(color: Pallete.dropBgColor),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Schedule",
                        style: TextStyling().h3,
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.alarm, color: Colors.amber),
                      Text("9:00 = 10:30"),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const ScheduleList(headtext: "Wednesday, 14th"),
          const ScheduleList(headtext: "Thursday, 15th"),
          const ScheduleList(headtext: "Friday, 16th"),
          Container(
            height: 60,
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Pallete.mainBgColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]),
            child: Center(
              child: Text(
                "More",
                style: TextStyling().h3.copyWith(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
