import 'package:flutter/material.dart';
import 'package:pizza_menu/pizza_data.dart';

class MenuItem extends StatelessWidget {
  final Pizza pizza;
  const MenuItem({super.key, required this.pizza});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ColorFiltered(
              colorFilter: pizza.soldOut?
              ColorFilter.mode(Colors.grey, BlendMode.saturation) :
              ColorFilter.mode(Colors.transparent, BlendMode.multiply), 
              child: Image.asset(
                "images/${pizza.photoName}",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pizza.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    pizza.ingredients,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    pizza.soldOut ? "sold out" : "\$${pizza.price}",
                      style: TextStyle(
                        color: Colors.black45,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
