import 'package:flutter/material.dart';

class ReadyMinute extends StatelessWidget {
  final int readyMinutes;
  const ReadyMinute({super.key ,required this.readyMinutes});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white),
      child:  Padding(
        padding: const EdgeInsets.only(
            top: 4, bottom: 4, right: 8, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.access_time_outlined,
                color: Colors.grey, size: 18),
            Text(
              "$readyMinutes min",
              style: const TextStyle(
                  color: Colors.grey, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
