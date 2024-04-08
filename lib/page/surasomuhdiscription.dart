import 'package:flutter/material.dart';

class Surasomuhdiacription extends StatefulWidget {
  final String suradiscription;
  final String banglaonubad;
  const Surasomuhdiacription(
      {super.key, required this.banglaonubad, required this.suradiscription});

  @override
  State<Surasomuhdiacription> createState() => _SurasomuhdiacriptionState();
}

class _SurasomuhdiacriptionState extends State<Surasomuhdiacription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("গুটি ইউরিয়া সার প্রয়োগ"),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color.fromARGB(255, 179, 203, 18),
                      Color.fromARGB(255, 107, 122, 9)
                ])),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 6, 40, 68),
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[
                              Color.fromARGB(255, 179, 203, 18),
                              Color.fromARGB(255, 107, 122, 9)
                            ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          widget.suradiscription,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ), 
                    Text(widget.banglaonubad,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        )),
                    const SizedBox(height: 10),
                    //    FacebookAdd(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
