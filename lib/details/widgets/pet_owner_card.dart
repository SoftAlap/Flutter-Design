import 'package:flutter/material.dart';


class PetOwnerCard extends StatelessWidget {
  const PetOwnerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
       
        children: [
          Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/dr_2.png'),
                    fit: BoxFit.cover),
                shape: BoxShape.circle),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Alex Bino",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "Pet Owner",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@ London",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,size: 20,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.chat,
                          color: Colors.white,size: 20,
                        ),
                      ),
                       SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.video_call,
                          color: Colors.white,size: 20,
                        ),
                      ),
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
