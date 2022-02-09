import 'package:flutter/material.dart';


class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text("Demo text for the per the best way to find someone to be carefully aabout the pets, we dont be serious about their patience"),
          ),
          Text("More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
        ],
      ),
    );
  }
}
