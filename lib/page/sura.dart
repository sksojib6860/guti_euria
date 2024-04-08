import 'package:flutter/material.dart';

import '../model/suradescription.dart';

import 'namajdescription.dart';

// ignore: must_be_immutable
class Sura extends StatefulWidget {
  const Sura({super.key});

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  // ignore: prefer_final_fields
  Suralist _suralist = Suralist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: const [
              SizedBox(
                width: 30,
              ),
              Text("গুটি ইউরিয়া"),
            ],
          ),
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
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ...(_suralist.suradescription[0]["suralistfulldiscription"]
                      as List<Map<String, dynamic>>)
                  .map((surasomuh) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NamajSikkha(
                                        tittle2: surasomuh["tittle2"],
                                        description: surasomuh["discription"],
                                      )));
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: <Color>[
                                    Color.fromARGB(255, 179, 203, 18),
                                    Color.fromARGB(255, 107, 122, 9)
                                  ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    "${surasomuh["tittle1"]}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))),
              //     FacebookAdd(),
            ],
          ),
        ),
      ),
    );
  }
}
