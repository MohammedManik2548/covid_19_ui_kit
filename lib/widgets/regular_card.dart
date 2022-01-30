import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegularCard extends StatelessWidget {
  final String iconName;
  final String cardLabel;

  const RegularCard({
    Key? key,
    required this.iconName,
    required this.cardLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[100],
            boxShadow: const [
              BoxShadow(
                color: Color(0xffd7d5d5),
                offset: Offset.zero,
                blurRadius: 25,
              ),
            ],
          ),
          child: SvgPicture.asset(
            iconName,
            width: 50,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          cardLabel,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
