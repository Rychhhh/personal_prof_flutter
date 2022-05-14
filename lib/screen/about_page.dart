import 'package:flutter/material.dart';
import 'package:profile_wikrama/widgets/left_bar.dart';
import 'package:profile_wikrama/widgets/right_bar.dart';
import 'package:profile_wikrama/models/data.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: ElevatedButton(
            child: const Icon(
              Icons.arrow_back_ios_sharp,
            ),
            onPressed: () => {Navigator.pop(context)},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(124, 253, 179, 95))),
          ),
          actions: [
            IconButton(
              icon: const Icon(moon),
              onPressed: () {},
            )
          ],
          leadingWidth: 50,
          titleSpacing: 80,
          title: Text("Profile " + name)),
      body: SingleChildScrollView(
        child: Container(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const RightBar(
                barWidth: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              const RightBar(barWidth: 150),
              const SizedBox(
                height: 20,
              ),
              const RightBar(
                barWidth: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: const CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage(image),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: bgAboutColor),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          email,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  )),
              Container(
                width: 500,
                height: 200,
                margin: const EdgeInsets.all(20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(215, 249, 182, 13),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            "About",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w200,
                                color: bgAboutColor),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                            about,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 200,
                margin: const EdgeInsets.only(bottom: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: const Color.fromARGB(215, 249, 182, 13),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          child: const Text(
                            "History",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w200,
                                color: Colors.white),
                          ),
                          alignment: Alignment.center,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            history,
                            style: const TextStyle(fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const LeftBar(
                barWidth: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              const LeftBar(barWidth: 150),
              const SizedBox(
                height: 20,
              ),
              const LeftBar(
                barWidth: 80,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )),
      ),
    ));
  }
}
