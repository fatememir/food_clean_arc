import 'package:flutter/material.dart';

class WatchButtonWidget extends StatelessWidget {
  const WatchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32), color: Colors.orange),
      child: const Padding(
        padding: EdgeInsets.only(top: 4, bottom: 4, right: 8, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.play_circle_fill_sharp, color: Colors.white, size: 18),
            Text(
              "Watch",
              style: TextStyle(color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
