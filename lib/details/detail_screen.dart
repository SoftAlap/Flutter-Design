import 'package:flutter/material.dart';
import 'package:pet_adoption/details/widgets/custom_app_bars.dart';
import 'package:pet_adoption/details/widgets/details_banner.dart';
import 'package:pet_adoption/details/widgets/details_card.dart';
import 'package:pet_adoption/details/widgets/pet_owner_card.dart';
import 'package:pet_adoption/models/cards.dart';

class DetailCard extends StatelessWidget {
  DetailCard({Key? key, required this.petModel}) : super(key: key);

  Cards petModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomAppBars(),
              SizedBox(
                height: 20,
              ),
              DetailsBanner(petModel: petModel),
              SizedBox(
                height: 20,
              ),
              PetOwnerCard(),
              SizedBox(height: 20,),
              DetailsCard(),
              SizedBox(height: 20,),
              Container(
               
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                radius: 20,
                backgroundColor: Colors.purple[100],
                child: IconButton(
                  splashRadius: 25,
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    
                  },
                ),
              ),
                    ElevatedButton(
                      
                      onPressed: (){}, child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                      child: Text("Adoption"),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
