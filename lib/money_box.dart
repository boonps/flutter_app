import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  const MoneyBox({
    Key? key,
    required this.title,
    required this.amount,
    required this.color,
    required this.size,
  }) : super(key: key);

  final String title;
  final double amount;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      height: size,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(title,
            style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Expanded(
          child: Text(
            NumberFormat("#,###.##").format(amount),
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
        )
      ]),
    );
  }
}
