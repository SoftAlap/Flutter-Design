import 'package:flutter/material.dart';
import 'package:pet_adoption/models/cards.dart';


class DetailsBanner extends StatelessWidget {
  const DetailsBanner({
    Key? key,
    required this.petModel,
  }) : super(key: key);

  final Cards petModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
             
              image: DecorationImage(image: AssetImage(petModel.photo,),fit: BoxFit.fill )
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                
                
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(petModel.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      Text("\$"+petModel.price.toString(),style: TextStyle(fontSize: 22,color: Colors.purple),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Origin Germany"),
                      Text("Height 10 cm"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Female 1 year"),
                      Text("Weight 10 kg"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
        
      ),
    );
  }
}
