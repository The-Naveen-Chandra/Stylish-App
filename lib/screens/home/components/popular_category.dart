import 'package:flutter/material.dart';
import 'package:stylish_app/constants/constants.dart';
import 'package:stylish_app/models/Product.dart';
import 'package:stylish_app/screens/home/components/components.dart';

class PopularCategory extends StatelessWidget {
  const PopularCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              devProductPopular.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding / 2),
                child: ProductCard(
                  imageSrc: devProductPopular[index].image,
                  title: devProductPopular[index].title,
                  price: devProductPopular[index].price,
                  bgColor: devProductPopular[index].bgColor,
                  onPress: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
