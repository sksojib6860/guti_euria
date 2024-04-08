// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import '../model/sharitime.dart';
//
// //import 'facebookadd.dart';
//
// // ignore: must_be_immutable
// class Shari extends StatefulWidget {
//   const Shari({super.key});
//
//   @override
//   State<Shari> createState() => _ShariState();
// }
//
// class _ShariState extends State<Shari> {
//   // ignore: prefer_final_fields
//   Shaeri _shari = Shaeri();
//
//   // ignore: prefer_final_fields
//   DateTime _dateTime = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     // ignore: non_constant_identifier_names
//     String FormateDate = DateFormat.yMMMd().format(_dateTime);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 233, 230, 230),
//       appBar: AppBar(
//           title: const Text(
//             "সাহরীর ও ইফতারের সময়সূচী",
//             style: TextStyle(
//               fontSize: 22,
//             ),
//           ),
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                     colors: <Color>[
//                   Color.fromARGB(255, 24, 134, 24),
//                   Color.fromARGB(255, 119, 243, 97)
//                 ])),
//           )),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(15),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 50,
//                   width: 370,
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(
//                       colors: <Color>[
//                         Color.fromARGB(255, 24, 134, 24),
//                         Color.fromARGB(255, 119, 243, 97)
//                       ],
//                     ),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     children: [
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       const Icon(
//                         Icons.calendar_today,
//                         color: Colors.white,
//                         size: 28,
//                       ),
//                       const SizedBox(
//                         width: 15,
//                       ),
//                       Text(
//                         FormateDate,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 22,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 90,
//                       ),
//                       const Text(
//                         "ঢাকা",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ...(_shari.shaeriTime[0]["shaeriShuedle"]
//                         as List<Map<String, dynamic>>)
//                     .map((shariShoudlelist) => SingleChildScrollView(
//                           scrollDirection: Axis.vertical,
//                           child: Padding(
//                             padding: const EdgeInsets.only(bottom: 15),
//                             child: Container(
//                               height: 70,
//                               width: MediaQuery.of(context).size.width,
//                               decoration: BoxDecoration(
//                                 color: const Color.fromARGB(255, 207, 203, 203),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(10),
//                                 child: Center(
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       CircleAvatar(
//                                         backgroundColor: Colors.green,
//                                         child: Text(
//                                           "${shariShoudlelist["index"]}",
//                                           style: const TextStyle(fontSize: 20),
//                                         ),
//                                       ),
//                                       Column(
//                                         children: [
//                                           Text(
//                                             "${shariShoudlelist["day"]}",
//                                             style: const TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 18,
//                                             ),
//                                           ),
//                                           Text(
//                                             "${shariShoudlelist["date"]}",
//                                             style: const TextStyle(fontSize: 18),
//                                           ),
//                                         ],
//                                       ),
//                                       Column(
//                                         children: [
//                                           const Text(
//                                             "সাহরীর শেষ",
//                                             style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 18,
//                                             ),
//                                           ),
//                                           Text(
//                                             "${shariShoudlelist["Shari_time"]} ",
//                                             style: const TextStyle(fontSize: 18),
//                                           ),
//                                         ],
//                                       ),
//                                       Column(
//                                         children: [
//                                           const Text(
//                                             "ইফতারের",
//                                             style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 18,
//                                             ),
//                                           ),
//                                           Text(
//                                             "${shariShoudlelist["ifatar_time"]}",
//                                             style: const TextStyle(fontSize: 18),
//                                           ),
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // class FormateDate {}
