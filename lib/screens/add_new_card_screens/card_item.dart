import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String backgroungCard;
  final String cardType;
  const CardItem({required this.backgroungCard, required this.cardType});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                backgroungCard,
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
                    // text number card
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Expiry Date", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xFFA2A2A7))),
                            SizedBox(height: 5,),
                            Text("24/2000", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CVV", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xFFA2A2A7))),
                            SizedBox(height: 5,),
                            Text("6986", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white))
                          ],
                        ),
                        SizedBox(),
                        Image.asset(cardType, width: 50, height: 40,)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
