import 'package:flutter/material.dart';


class ItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right:15, top:10),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),


          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                      "images/apple.png",
                    height: 120,
                    width: 120,

                  ),
                ),
              ),


              Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                child: Text(
                  "Apple",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Short Description",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF4C53A5),
                      ),
                ),
              ),

              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TK. 250",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ],
                ),
              ),




            ],
          ),






        ),
      ],
    );
  }
}