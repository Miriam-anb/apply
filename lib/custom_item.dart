import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'model/populardiet.dart';
class CustomItem extends StatelessWidget {
  final int index;
  final List<PopularDietsModel> popularDiets;
  const CustomItem({super.key, required this.index, required this.popularDiets});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: popularDiets[index].boxIsSelected
              ? Colors.white
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          boxShadow: popularDiets[index].boxIsSelected
              ? [
            BoxShadow(
                color: const Color(0xff1D1617)
                    .withOpacity(0.07),
                offset: const Offset(0, 10),
                blurRadius: 40,
                spreadRadius: 0)
          ]
              : []),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            popularDiets[index].iconPath,
            width: 65,
            height: 65,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                popularDiets[index].name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16),
              ),
              Text(
                '${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calorie}',
                style: const TextStyle(
                    color: Color(0xff7B6F72),
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/button.svg',
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
