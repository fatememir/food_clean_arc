import 'package:flutter/material.dart';

class ReadyMinute extends StatelessWidget {
  const ReadyMinute({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white),
      child: const Padding(
        padding: EdgeInsets.only(
            top: 4, bottom: 4, right: 8, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.access_time_outlined,
                color: Colors.grey, size: 18),
            Text(
              "15 min",
              style: TextStyle(
                  color: Colors.grey, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
