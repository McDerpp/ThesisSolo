import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/provider/main_settings.dart';
import 'package:frontend/screens/home/home.dart';
import 'package:frontend/screens/login.dart';
import 'package:frontend/screensLite/home/selection.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Fit",
                        style: TextStyle(
                          color: tertiaryColor,
                          fontSize: 60,
                        ),
                      ),
                      Text(
                        "Guide",
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 60,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Spacer(),
                  Selection(
                    name: "FitGuide",
                    description:
                        "Full app, feature filled version with a backend.",
                    destination: (context) => const HomePage(),
                  ),
                  Spacer(),
                  Selection(
                    name: "FitGuide-Lite",
                    description: "An offline mode, contains only inferencing",
                    destination: (context) => const HomePage(),
                  ),
                  Spacer(),
                  Selection(
                    name: "FitGuide-Ex",
                    description:
                        "An experimental mode, contains all the fun stuff yet to be implemented.",
                    destination: (context) => const HomePage(),
                  ),
                  Spacer(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
