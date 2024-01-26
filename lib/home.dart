import 'package:flutter/material.dart';
import 'package:online_academy_ui_design/widgets/classes_container.dart';
import 'package:online_academy_ui_design/widgets/homepage_maincontainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Icon(
                  Icons.sort_rounded,
                  size: 30,
                ),
                Row(children: [
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 30,
                  ),
                  Image(height: 40, image: AssetImage("assets/avatar.png"))
                ])
              ]),
              const SizedBox(height: 20),
              const Text("Hello, Mia",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
              const SizedBox(height: 10),
              MainContainer(),
              const SizedBox(height: 40),
              const Text("Upcoming classes",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClassesContainer(
                      imaage: "assets/image2.jpg",
                      h1Text: "Public Relations",
                      dayDate: "Tuesday, 13th",
                      time: "9:00 - 10:30",
                      lectures: "9/10 lecture",
                    ),
                    ClassesContainer(
                      imaage: "assets/image1.jpg",
                      h1Text: "Marketing Stretegy",
                      dayDate: "Tuesday, 13th",
                      time: "10:30 - 11:30",
                      lectures: "5/10 lecture",
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xFFF3B148),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  "View the schedule",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              )
            ]),
      ),
    );
  }
}
