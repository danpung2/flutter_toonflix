import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        elevation: 2,
      ),
    );
  }
}

// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   static const twentyFiveMinutes = 1500;
//   int totalSeconds = twentyFiveMinutes;
//   bool isRunning = false;
//   int totalPomodoro = 0;
//   late Timer timer;
//
//   void onTick(Timer timer) {
//     if (totalSeconds == 0) {
//       setState(() {
//         totalPomodoro++;
//         isRunning = false;
//         totalSeconds = twentyFiveMinutes;
//       });
//       timer.cancel();
//     } else {
//       setState(() {
//         totalSeconds--;
//       });
//     }
//   }
//
//   void onStartPressed() {
//     timer = Timer.periodic(
//       const Duration(seconds: 1),
//       onTick,
//     );
//     setState(() {
//       isRunning = true;
//     });
//   }
//
//   void onPausePressed() {
//     timer.cancel();
//     setState(() {
//       isRunning = false;
//     });
//   }
//
//   // 시간 초기화
//   void onResetTimePressed() {
//     timer.cancel();
//     setState(() {
//       isRunning = false;
//       totalSeconds = twentyFiveMinutes;
//     });
//   }
//
//   String format(int seconds) {
//     return Duration(seconds: seconds)
//         .toString()
//         .split(".")
//         .first
//         .substring(2, 7);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).backgroundColor,
//       body: Column(
//         children: [
//           Flexible(
//             flex: 1,
//             child: Container(
//               alignment: Alignment.bottomCenter,
//               child: Text(
//                 format(totalSeconds),
//                 style: TextStyle(
//                   color: Theme.of(context).cardColor,
//                   fontSize: 89,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 2,
//             child: Column(
//               children: [
//                 Center(
//                   child: IconButton(
//                     icon: Icon(isRunning
//                         ? Icons.pause_circle_outline
//                         : Icons.play_circle_outline),
//                     onPressed: isRunning ? onPausePressed : onStartPressed,
//                     iconSize: 120,
//                     color: Theme.of(context).cardColor,
//                   ),
//                 ),
//                 Center(
//                   child: IconButton(
//                     icon: const Icon(Icons.refresh_rounded),
//                     onPressed: onResetTimePressed,
//                     iconSize: 40,
//                     color: Theme.of(context).cardColor,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Flexible(
//             flex: 1,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).cardColor,
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Pomodoro",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600,
//                             color: Theme.of(context).textTheme.headline1!.color,
//                           ),
//                         ),
//                         Text(
//                           "$totalPomodoro",
//                           style: TextStyle(
//                             fontSize: 58,
//                             fontWeight: FontWeight.w600,
//                             color: Theme.of(context).textTheme.headline1!.color,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
