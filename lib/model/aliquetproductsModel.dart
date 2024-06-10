class AliquetProductsModel {
  static final aliquetProducts = [
    aliquetProduct(
        title: 'Men Shorts',
        subtitle : 'Measurement for men shorts',
        image: 'assets/images/men shorts.jpg'
    )
    ,aliquetProduct(
        title: 'Men Pants',
        subtitle : 'Measurement for full pants',
        image: 'assets/images/men full pant.jpg'
    ),
    aliquetProduct(
        title: 'Tank Tops',
        subtitle : 'Measurement for tank tops',
        image: 'assets/images/tank top.png'
    ),
  ];
}


class aliquetProduct{
  late final String title;
  late final String subtitle;
  late final String image;

  aliquetProduct({required this.title,required this.subtitle,required this.image});
}
