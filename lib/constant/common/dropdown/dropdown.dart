import 'package:donationapp/store/signup/signup.store.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key, this.refs, this.list, this.label, this.name});

  final refs;
  final list;
  final label;
  final name;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: list.map((String category) {
        return new DropdownMenuItem(value: category, child: Text(category));
      }).toList(),
      decoration: InputDecoration(
        label: Text("${label}"),
      ),
      onChanged: (val) {
        refs.state[name] = val.toString();

        // log("This is dropdown val ${val}");
      },
    );
  }
}
