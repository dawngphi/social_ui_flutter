import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CardItemState();
}

class CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'assets/images/background_card.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "4562",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "1122",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "4595",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "7852",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text("AR Jonson", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white),),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text("Expiry Date", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xFFA2A2A7))),
                          SizedBox(height: 5,),
                          Text("24/2000", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Text("Expiry Date", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xFFA2A2A7))),
                          SizedBox(height: 5,),
                          Text("24/2000", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white))
                        ],
                      ),
                      SizedBox(),
                      Image.asset("assets/images/master_card.png", width: 100, height: 40,)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
