import 'package:flutter/material.dart';

import '../model/suralist.dart';
//import 'facebookadd.dart';
import 'surasomuhdiscription.dart';

// ignore: must_be_immutable
class SuraSomuh extends StatefulWidget {
  const SuraSomuh({super.key});

  @override
  State<SuraSomuh> createState() => _SuraSomuhState();
}

class _SuraSomuhState extends State<SuraSomuh> {
  // ignore: prefer_final_fields
  SuraList _suralist = SuraList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Text("গুটি ইউরিয়া সার প্রয়োগ পদ্ধতি")
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
                ])
            ),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ...(_suralist.suralistdiscription[0]["surasomuhlist"]
                      as List<Map<String, dynamic>>)
                  .map(
                (sura) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Surasomuhdiacription(
                                      banglaonubad: sura["banglaonubad"],
                                      suradiscription: sura["suradiscription"],
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
                                  "${sura["suratittle"]}",
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
                    )),
              ),
              //  FacebookAdd(),
            ],
          ),
        ),
      ),
    );
  }
}
