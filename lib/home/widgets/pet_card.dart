import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    Key? key, 

    required this.name, 
    required this.photo, 
    required this.price, 


  }) : super(key: key);

  final String name,photo ;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                    image: AssetImage(
                      photo,
                    ),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.location_history),
                        Text("kathmondu", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  Text(
                    "ORIGIN Foreign",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text("Male 5 month", style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
              Text(
                "\$$price",
                style: TextStyle(
                    color: Colors.purple[300], fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
