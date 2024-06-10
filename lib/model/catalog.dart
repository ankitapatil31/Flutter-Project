class CatelogModel {
  static final items = [
    Item(
        title: 'Chest Width',
        subtitle : 'Measurement chest width for tshirt',
        image: 'assets/images/manChest.png'
    )
    ,Item(
        title: 'UpperBody Height',
        subtitle : 'Measurement upper body height',
        image: 'assets/images/manUpperBodyHeight.png'
    ),
    Item(
        title: 'Leg Height',
        subtitle : 'Measurement Leg Height for pants',
        image: 'assets/images/manLegHeight.png'
    ),
    Item(
        title: 'Waist',
        subtitle : 'Measurement Waist for belly of the pants',
        image: 'assets/images/manWaist.png'
    ),
    Item(
        title: 'Abdomen',
        subtitle : 'Measurement belly with side shot',
        image: 'assets/images/manUpperBodyHeight.png'
    ),
  ];
}


class Item{
  late final String title;
  late final String subtitle;
  late final String image;

  Item({required this.title,required this.subtitle,required this.image});
}

final products = <Object>[
  Item(
    title: 'Chest Width',
    subtitle : 'Measurement chest width for tshirt',
    image: 'assets/images/manChest.png'
  )
  ,Item(
    title: 'UpperBody Height',
    subtitle : 'Measurement upper body height',
    image: 'assets/images/manUpperBodyHeight.png'
  ),
  Item(
      title: 'Leg Height',
      subtitle : 'Measurement Leg Height for pants',
      image: 'assets/images/manLegHeight.png'
  ),
  Item(
      title: 'Waist',
      subtitle : 'Measurement Waist for belly of the pants',
      image: 'assets/images/manWaist.png'
  ),
  Item(
      title: 'Abdomen',
      subtitle : 'Measurement belly with side shot',
      image: 'assets/images/manUpperBodyHeight.png'
  ),
];