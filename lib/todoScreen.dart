import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

class ToDoScreen extends StatefulWidget {
  ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  final db = GetStorage();

  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'ToDo App UI',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'To-Day',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
            '18 Aug 2024',
            style: TextStyle(color: Colors.white),
          ),
          // ...namaz.map(
          //   (e) => Container(
          //     height: 80.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       color: Colors.grey,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: Row(
          //       children: [
          //         Checkbox(
          //             value: ischeck,
          //             onChanged: (v) {
          //               setState(() {
          //                 ischeck = v!;
          //               });
          //             }),
          //         Text('Fajar'),
          //       ],
          //     ),
          //   ),
          // )
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: namaz.length,
          //     itemBuilder: ((context, index) {
          //       return Padding(
          //         padding: const EdgeInsets.all(20),
          //         child: Container(
          //           height: 80.h,
          //           width: 300.w,
          //           decoration: BoxDecoration(
          //             color: Colors.grey,
          //             borderRadius: BorderRadius.circular(10),
          //           ),
          //           child: Row(
          //             children: [
          //               Checkbox(
          //                   value: ischeck,
          //                   onChanged: (v) {
          //                     setState(() {
          //                       ischeck = v!;
          //                     });
          //                   }),
          //               SizedBox(
          //                 width: 20.w,
          //               ),
          //               Text(
          //                 namaz[index],
          //                 style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 18.sp,
          //                     fontWeight: FontWeight.w400),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     }),
          //   ),
          // ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 300.h,
                      child: Text('hello world'),
                    );
                  });
            },
            child: Container(
              height: 50.h,
              width: 100.w,
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Center(
                child: Text(
                  'ADD',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
