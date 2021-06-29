import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      const url = 'https://www.tsoftmobil.com';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchURL2() async {
      const url = 'https://www.erbakan.edu.tr/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchURL3() async {
      const url = 'https://www.linkedin.com/in/furkancetintas0/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.deepOrange,
            elevation: 10,
            child: Icon(Icons.mail),
            onPressed: _launchURL3),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(
                          onTap: _launchURL3,
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/profile.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Furkan Çetintaş",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "T-Soft E-Ticaret Çözümleri",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Necmettin Erbakan Üniveristesi",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ABOUT ME",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        ListTile(
                          leading: GestureDetector(
                              onTap: _launchURL,
                              child: Icon(
                                Icons.phone_android,
                                color: Colors.white,
                              )),
                          title: Text(
                            "T-Soft E-Ticaret Çözümleri Şirketinde Flutter Developer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: GestureDetector(
                              onTap: _launchURL2,
                              child: Icon(
                                Icons.school,
                                color: Colors.white,
                              )),
                          title: Text(
                            "Necmettin Erbakan Üniveristesi",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SKILLS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Flutter",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        RoundedProgressBar(
                          percent: 75.0,
                          height: 30,
                          childCenter: Text("%75",
                              style: TextStyle(color: Colors.white)),
                          borderRadius: BorderRadius.circular(12),
                          theme: RoundedProgressBarTheme.midnight,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Java",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        RoundedProgressBar(
                          percent: 60.0,
                          height: 30,
                          childCenter: Text("%60",
                              style: TextStyle(color: Colors.white)),
                          borderRadius: BorderRadius.circular(12),
                          theme: RoundedProgressBarTheme.midnight,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "C#",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        RoundedProgressBar(
                          percent: 55.0,
                          height: 30,
                          childCenter: Text("%55",
                              style: TextStyle(color: Colors.white)),
                          borderRadius: BorderRadius.circular(12),
                          theme: RoundedProgressBarTheme.midnight,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
