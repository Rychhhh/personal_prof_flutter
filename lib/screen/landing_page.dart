import 'package:flutter/material.dart';
import 'package:profile_wikrama/models/data.dart';
import 'package:profile_wikrama/screen/about_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background_landing.png"),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Container(
                width: 370,
                height: 450,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 4,
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 50),
                        child: const CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage(image),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text(
                          "Rayhan Rizki Putra",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 20, 15, 20),
                        child: const Text(
                          "Vocational High School Student at SMK Wikrama Bogor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          child: const Text("Go To More..."),
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutPage()))
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
