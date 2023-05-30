class Category {
  final String iconSrc, title;

  Category({
    required this.iconSrc,
    required this.title,
  });
}

List<Category> devCategories = [
  Category(
    iconSrc: "assets/icons/dress.svg",
    title: "Dress",
  ),
  Category(
    iconSrc: "assets/icons/shirt.svg",
    title: "Shirt",
  ),
  Category(
    iconSrc: "assets/icons/pants.svg",
    title: "Pants",
  ),
  Category(
    iconSrc: "assets/icons/Tshirt.svg",
    title: "T-shirt",
  ),
];
