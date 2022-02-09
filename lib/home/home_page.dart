import 'package:flutter/material.dart';
import 'package:pet_adoption/details/detail_screen.dart';
import 'package:pet_adoption/models/cards.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/pet_card.dart';
import 'widgets/recomended.dart';
import 'widgets/top_discount_with_photo_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomAppBar(),
                  SizedBox(
                    height: 20,
                  ),
                  TopDiscoundWithPhotoCard(
                    photo: "assets/images/pet2.png",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Recomended(),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    itemCount: demo_cards.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => InkWell(
                        splashColor: Colors.grey,
                        radius: 20,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailCard(
                                        petModel: demo_cards[index],
                                      )));
                        },
                        child: PetCard(
                            name: demo_cards[index].name,
                            photo: demo_cards[index].photo,
                            price: demo_cards[index].price)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
