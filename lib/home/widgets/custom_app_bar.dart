import 'package:flutter/material.dart';
import 'package:pet_adoption/home/widgets/notification_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(),
            child: const Icon(
              Icons.window_outlined,
              size: 25,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Search'),
                        ),
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              child: Icon(Icons.notifications),
            ),
          ),
        ],
      ),
    );
  }
}
