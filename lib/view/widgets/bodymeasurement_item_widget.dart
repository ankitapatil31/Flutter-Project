import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../../model/catalog.dart';
import '../../utils/routes.dart';


class BodyMeasurementItems extends StatelessWidget {
  const BodyMeasurementItems({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(item.image),
      title: Text(item.title),
      subtitle: Text(item.subtitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {Navigator.pushNamed(context, MyRoutes.camera);
      },
    );
  }
}
