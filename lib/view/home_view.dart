import 'package:demo_app_task/core/data.dart';
import 'package:demo_app_task/utils/utils.dart';
import 'package:demo_app_task/view/widgets/address_bar.dart';
import 'package:demo_app_task/view/widgets/address_item.dart';
import 'package:demo_app_task/view/widgets/category_item.dart';
import 'package:demo_app_task/view/widgets/deal_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          addressBar('Mustafa St.'),
          Padding(
            padding: const EdgeInsets.all(PaddingManager.p20),
            child: Container(
              width: double.infinity,
              height: SizeManager.s55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeManager.s10),
                color: ColorManager.searchFill,
                border: Border.all(
                  color: ColorManager.stroke,
                ),
              ),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: SizeManager.s30,
                      color: ColorManager.stroke,
                    ),
                    hintText: 'Search in thousands of products',
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                addressItem(addresses[0]),
                addressItem(addresses[1]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: PaddingManager.p20, top: PaddingManager.p14),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore by Category',
                    style: getPoppinsBoldStyle(
                      color: ColorManager.titleColor,
                      fontSize: FontSize.s20,
                    ),
                  ),
                  Text(
                    'See All (36)',
                    style: getPoppinsRegularStyle(
                      color: ColorManager.searchStroke,
                      fontSize: FontSize.s15,
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: PaddingManager.p20),
            child: SizedBox(
              height: SizeManager.s100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    categoryItem(categories[index]),
                itemCount: categories.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: SizeManager.s30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: PaddingManager.p20),
            child: Text(
              'Deals of the day',
              style: getPoppinsBoldStyle(
                color: ColorManager.titleColor,
                fontSize: FontSize.s20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: PaddingManager.p20),
            child: SizedBox(
              height: SizeManager.s120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => dealItem(deals[index]),
                itemCount: deals.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: SizeManager.s10,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p20),
            child: Container(
              height: SizeManager.s150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: ColorManager.steak,
                borderRadius: BorderRadius.all(
                  Radius.circular(SizeManager.s15),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: SizeManager.s120,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mega',
                        style: getPoppinsRegularStyle(
                          color: ColorManager.primary,
                          fontSize: FontSize.s20,
                        ),
                      ),
                      Text(
                        'WHOPPER',
                        style: getPoppinsBoldStyle(
                          color: ColorManager.whopper,
                          fontSize: SizeManager.s30,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$17',
                            style: getPoppinsBoldStyle(
                              color: ColorManager.primary,
                              fontSize: FontSize.s26,
                            ),
                          ),
                          const SizedBox(
                            width: SizeManager.s15,
                          ),
                          const Text(
                            '\$32',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: ColorManager.white,
                              fontWeight: FontWeight.bold,
                              fontSize: FontSize.s20,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Available Until 24 December 2020',
                        style: getPoppinsRegularStyle(
                          color: ColorManager.white,
                          fontSize: FontSize.s15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
