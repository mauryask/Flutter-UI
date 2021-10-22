/*
* The file demonstrates the best way of passing the 
* Object to the class extending state
* never pass the data through _MyDetailState(object) constructor 
* within the createState() funtion
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './details.dart';

class MyDetail extends StatefulWidget {
  final Details detail;
  const MyDetail({required Key key, required this.detail}) : super(key: key);
  @override
  State<MyDetail> createState() => _MyDetailState();
}

class _MyDetailState extends State<MyDetail> {
  late Details detail;
  _MyDetailState() {
    detail = widget.detail;
  }
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(tag: detail, child: Image.asset(detail.image)),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              detail.heading,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color(0xff1a1a1a).withOpacity(0.8),
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              detail.description,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
