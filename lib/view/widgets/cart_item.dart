import 'package:demo_app_task/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.color,
    required this.name,
    required this.data,
    required this.btns,
    required this.price,
  }) : super(key: key);

  Color color;
  String name;
  String data;
  Widget btns;
  Widget price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: PaddingManager.p20,
        right: PaddingManager.p20,
      ),
      child: Row(
        children: [
          Container(
            height: SizeManager.s60,
            width: SizeManager.s60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(SizeManager.s15),
              ),
            ),
          ),
          const SizedBox(
            width: SizeManager.s20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: getPoppinsBoldStyle(
                  color: ColorManager.categoryName,
                  fontSize: FontSize.s12,
                ),
              ),
              Text(
                data,
                style: getPoppinsMediumStyle(
                  color: ColorManager.categoryName,
                  fontSize: FontSize.s12,
                ),
              ),
              price,
            ],
          ),
          const Spacer(),
          btns,
        ],
      ),
    );
  }
}
