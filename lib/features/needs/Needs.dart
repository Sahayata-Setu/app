import 'package:donationapp/features/needs/widgets/needCard.dart';
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
