// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';

class TopDiscoundWithPhotoCard extends StatelessWidget {
  const TopDiscoundWithPhotoCard({
    Key? key, required this.photo, 
  }) : super(key: key);

  final String photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.purple[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Adopt your\nfavorite\npet.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("100% discount"),
                ),
              ],
            ),
          ),
          Container(height: 100, child: Image.asset(photo,fit: BoxFit.fill,),width: 130,),
        ],
      ),
    );
  }
}
