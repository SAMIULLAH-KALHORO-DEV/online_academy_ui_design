import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_academy_ui_design/widgets/utils.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 40, right: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Text("Channels Synergy", style: TextStyling().h3),
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
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(image: AssetImage("assets/image2.jpg")),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Pallete.darkColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      CupertinoIcons.rectangle_expand_vertical,
                      color: Colors.white.withOpacity(0.7),
                      size: 25,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: MediaQuery.of(context).size.width / 2 - 20,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Pallete.mainBgColor,
                    ),
                    child: Icon(
                      CupertinoIcons.play_fill,
                      color: Colors.white.withOpacity(0.7),
                      size: 25,
                    ),
                  ),
                ),
                const Positioned(
                    bottom: 5,
                    child: Slider(
                        secondaryActiveColor: Colors.amber,
                        value: 30,
                        max: 100,
                        min: 1,
                        onChanged: null))
              ]),
              const SizedBox(height: 20),
              Text("Attachments", style: TextStyling().h3),
              Container(
                // margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.04),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(10),
                        color: Pallete.mainBgColor,
                      ),
                      child: const Icon(
                        Icons.video_file_rounded,
                        color: Colors.white,
                        size: 25,
                      )),
                  const SizedBox(width: 20),
                  Text(
                    "Slideshow",
                    style: TextStyling().h3,
                  ),
                ]),
              ),
              const SizedBox(height: 10),
              Container(
                // margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.04),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(10),
                        color: Pallete.mainBgColor,
                      ),
                      child: const Icon(
                        Icons.video_file_rounded,
                        color: Colors.white,
                        size: 25,
                      )),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Slideshow",
                        style: TextStyling().h3,
                      ),
                      Expanded(
                        child: Text(
                          "You will get 0.5 points to your final mark \nfor comleting the tasks",
                          style: TextStyling().h2,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // color: Colors.black12.withOpacity(0.04),
                    border: Border.all(color: Pallete.mainBgColor),
                    borderRadius: BorderRadius.circular(10)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(10),
                        // color: Pallete.mainBgColor,
                        border: Border.all(color: Pallete.mainBgColor),
                      ),
                      child: const Icon(
                        Icons.video_file_rounded,
                        color: Pallete.mainBgColor,
                        size: 25,
                      )),
                  const SizedBox(width: 20),
                  Text(
                    "Add homework",
                    style: TextStyling().h3,
                  ),
                ]),
              ),
            ]),
      ),
    );
  }
}
