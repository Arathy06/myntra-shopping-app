import 'package:flutter/material.dart';
import 'package:flutter_dress_shoppingcart/Model/DressModel.dart';


class Menview extends StatelessWidget {

  final Dress men;


  const Menview({Key key, this.men}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0XFFe3e3e3),
                borderRadius: BorderRadius.circular(10.0)
            ),

            child: Image.network(men.image),
          ),
        ),
        Text(men.name,style: TextStyle(fontWeight: FontWeight.bold),),
        Text("Price: ${men.price}"),



        FlatButton(
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),

          ) ,

          color: Colors.pinkAccent,
          onPressed: (){}, child: Text("Add to Bag",),


        )



      ],





    );

  }
}
