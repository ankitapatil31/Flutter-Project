import "package:flutter/material.dart";
import "../../model/AliquetProductsModel.dart";
import "../../utils/routes.dart";
import "SubOptions.dart";


class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("ALIQUET PRODUCTS",textAlign: TextAlign.left,),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Card(
                    child: ListTile(
                      dense: true,
                      minLeadingWidth: 50,
                      leading: Image.asset(AliquetProductsModel.aliquetProducts[index].image),
                      title: Text(AliquetProductsModel.aliquetProducts[index].title),
                      subtitle: Text(AliquetProductsModel.aliquetProducts[index].subtitle),
                      onTap: () {Navigator.pushNamed(context,MyRoutes.suboptions);
                      },
                    ),
                  ),
                );
              },
              itemCount: AliquetProductsModel.aliquetProducts .length,
              ),
          ),
        ],
      ),
    );
  }
}
