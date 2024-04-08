import 'package:flutter/material.dart';


class NamajSikkha extends StatefulWidget {
  final String tittle2;
  final String description;
  const NamajSikkha({super.key, required this.tittle2, required this.description});

  @override
  State<NamajSikkha> createState() => _NamajSikkhaState();
}

class _NamajSikkhaState extends State<NamajSikkha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("গুটি ইউরিয়া"),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 350,
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
                      widget.tittle2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(widget.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    )),
                const SizedBox(height: 10),
                // FacebookAdd(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
