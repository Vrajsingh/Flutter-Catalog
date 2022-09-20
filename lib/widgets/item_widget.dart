import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item})
      : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MediaQuery(
        data: MediaQueryData(
    ),
          child: Material(
                child: ListTile(
                  onTap: () {},
                //  leading: Image.network(item.image),
                  title: Text(item.name),
                  subtitle: Text(item.desc),
                  trailing: Text("\$${item.price}",
                  textScaleFactor: 1.5,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
