// import 'package:flutter/material.dart';
//
// class MyDaysWidget extends StatefulWidget {
//   const MyDaysWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyDaysWidget> createState() => _MyDaysWidgetState();
// }
//
// class _MyDaysWidgetState extends State<MyDaysWidget> {
//
//
//   SizedBox heightCustom(){
//     return const SizedBox(
//       height: 30,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _buildCount(),
//       ),
//     );
//   }
//
//
//   Widget _buildCount(){
//     final birthday = DateTime(2021, 5, 8);
//     final difference = (DateTime.now()).difference(birthday).inDays;
//     return  Container(
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black38,
//             offset: Offset(0, 1),
//             blurRadius: 9.0,
//           ),
//         ],
//       ),
//       padding: EdgeInsets.all(11.0),
//       child: Text(difference.toString(),style: TextStyle(color: Colors.red,fontSize: 20),),
//     );
//   }
// }
