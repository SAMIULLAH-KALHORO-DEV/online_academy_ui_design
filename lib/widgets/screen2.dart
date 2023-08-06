import 'package:flutter/material.dart';
import 'package:online_academy_ui_design/widgets/utils.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 40, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Text(
            "Marketing Theory",
            style: TextStyling().h1,
          ),
          const SizedBox(height: 20),
          Text("Topic of the lecture", style: TextStyling().h2),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Channels Synergy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Pallete.mainBgColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.access_time_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  const Text(" 1 hour")
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage("assets/image2.jpg")),
              ),
              Positioned(
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Pallete.mainBgColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(
                    Icons.access_time_rounded,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
