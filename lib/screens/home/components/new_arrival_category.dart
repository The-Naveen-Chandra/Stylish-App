import 'package:flutter/material.dart';
import 'package:stylish_app/constants/constants.dart';
import 'package:stylish_app/models/Product.dart';
import 'package:stylish_app/screens/details/details_screen.dart';
import 'package:stylish_app/screens/home/components/components.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              devProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding / 2),
                child: ProductCard(
                  imageSrc: devProduct[index].image,
                  title: devProduct[index].title,
                  price: devProduct[index].price,
                  bgColor: devProduct[index].bgColor,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: devProduct[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
