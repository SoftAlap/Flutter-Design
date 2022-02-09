import 'package:flutter/material.dart';


class CustomAppBars extends StatelessWidget {
  const CustomAppBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
          ),
          Text(
            "Pet",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                )),
          ),
        ],
      ),
    );
  }
}
