import "package:flutter/material.dart";
import "package:learning_project/model/catalog.dart";
import "../widgets/bodymeasurement_item_widget.dart";


class BodyMeasure extends StatefulWidget {
  const BodyMeasure({super.key});

  @override
  State<BodyMeasure> createState() => _BodyMeasureState();
}

class _BodyMeasureState extends State<BodyMeasure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return  BodyMeasurementItems(item: CatelogModel.items[index],);
          },
          itemCount: CatelogModel.items.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: 40,thickness: 1,);
          },),
      )
    );
  }
}
