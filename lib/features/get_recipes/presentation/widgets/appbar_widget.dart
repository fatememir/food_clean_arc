import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          width: 50,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset('assets/images/avatar.png'),
          ),
        ),
        const Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(
              width: 4,
            ),
            Text(
              "Mazandaran,",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(" Iran")
          ],
        ),
        const Icon(Icons.notifications_outlined),
      ],
    );
  }
}
