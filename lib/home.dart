import 'package:flutter/material.dart';
import 'package:online_academy_ui_design/widgets/homepage_maincontainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFF8F8F8),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Icon(
                  Icons.sort_rounded,
                  size: 30,
                ),
                Row(children: const [
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
            ]),
      ),
    );
  }
}
