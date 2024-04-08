// import 'package:facebook_audience_network/facebook_audience_network.dart';
// import 'package:flutter/material.dart';

// ////-------faceboook banner adds------/////
// class FacebookAdd extends StatelessWidget {
//   const FacebookAdd({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment(0.5, 1),
//       child: FacebookBannerAd(
//         // placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2964944860251047", // test
//         placementId: "1096060697976196_1096062604642672", // original
//         bannerSize: BannerSize.STANDARD,
//         listener: (result, value) {
//           switch (result) {
//             case BannerAdResult.ERROR:
//               print("Error: $value");
//               break;
//             case BannerAdResult.LOADED:
//               print("Loaded: $value");
//               break;
//             case BannerAdResult.CLICKED:
//               print("Clicked: $value");
//               break;
//             case BannerAdResult.LOGGING_IMPRESSION:
//               print("Logging Impression: $value");
//               break;
//           }
//         },
//       ),
//     );
//   }
// }

// ///------facebook industrial add add-----////
// void industrial() {
//   FacebookInterstitialAd.loadInterstitialAd(
//     // placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617", // test
//     placementId: "1096060697976196_1096062757975990", // original
//     listener: (result, value) {
//       if (result == InterstitialAdResult.LOADED)
//         // ignore: curly_braces_in_flow_control_structures
//         FacebookInterstitialAd.showInterstitialAd(delay: 5000);
//     },
//   );
// }

// ///------face native add-----////
// Widget nativeAd() {
//   return FacebookNativeAd(
//     // placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2964952163583650", // test
//     placementId: "1096060697976196_1096062981309301", // original
//     adType: NativeAdType.NATIVE_AD_VERTICAL,
//     width: double.infinity,
//     height: 250,
//     backgroundColor: Colors.blue,
//     titleColor: Colors.white,
//     descriptionColor: Colors.white,
//     buttonColor: Colors.deepPurple,
//     buttonTitleColor: Colors.white,
//     buttonBorderColor: Colors.white,
//     listener: (result, value) {
//       print("Native Ad: $result --> $value");
//     },
//     keepExpandedWhileLoading: true,
//     expandAnimationDuraion: 1000,
//   );
// }
