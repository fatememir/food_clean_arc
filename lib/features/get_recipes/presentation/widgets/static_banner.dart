import 'package:flutter/cupertino.dart';

class StaticBanner extends StatelessWidget {
  const StaticBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        "assets/images/meal.png",
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
