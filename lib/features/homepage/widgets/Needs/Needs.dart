import 'package:donationapp/features/homepage/widgets/Donations/dontaionCard.dart';
import 'package:donationapp/features/homepage/widgets/Needs/needCard.dart';
import 'package:flutter/material.dart';

class Needs extends StatelessWidget {
  const Needs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => NeedCard(),
      itemCount: 3,
    );
  }
}
