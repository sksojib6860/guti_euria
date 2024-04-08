// ignore_for_file: camel_case_types, null_check_always_fails

import 'package:flutter/material.dart';
import '../model/sharitime.dart';
import '../widget/custom_color.dart';
import 'sura.dart';
import 'surasomuh.dart';

class SehariHome_Screen extends StatefulWidget {
  
  SehariHome_Screen({Key? key}) : super(key: key);
  // ignore: unused_field
  final Shaeri _shaeri = Shaeri();

  @override
  State<SehariHome_Screen> createState() => _SehariHome_ScreenState();
}
  AllColor allColor = AllColor();

class _SehariHome_ScreenState extends State<SehariHome_Screen> {
  // ignore: prefer_final_fields

  // static const String _url = "https://appstor-bd.com/";
  // static const String _url1 =
  //     "https://www.amazon.com/s?i=mobile-apps&rh=p_4%3AApp+Mart+BD&search-type=ss";
  //
  //
  // void _launchURL() async {
  //   // ignore: deprecated_member_use
  //   if (!await launch(_url)) throw 'Could not launch $_url';
  // }
  //
  // void _launchURL1() async {
  //   // ignore: deprecated_member_use
  //   if (!await launch(_url1)) throw 'Could not launch $_url1';
  // }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60)
                          // bottomLeft: Radius.circular(20),
                          // bottomRight: Radius.circular(10)
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/guti_euria.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            //   FacebookAdd(),
            const SizedBox(height: 10),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Sura()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                  ),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 179, 203, 18),
                          Color.fromARGB(255, 107, 122, 9)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'গুটি ইউরিয়া',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SuraSomuh()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                  ),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 179, 203, 18),
                          Color.fromARGB(255, 107, 122, 9)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'ইউরিয়ার সার প্রয়োগ  ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
