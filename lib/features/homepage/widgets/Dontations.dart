import 'package:donationapp/features/homepage/widgets/dontaionCard.dart';
import 'package:flutter/material.dart';

class Dontaions extends StatelessWidget {
  const Dontaions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => DonationCard(),
      itemCount: 3,
    );
  }
}
