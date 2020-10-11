import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dress_shoppingcart/Model/DressModel.dart';



class DressView extends StatelessWidget {
  final Dress dress;

  const DressView({Key key, this.dress}) : super(key: key);

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

              child: Image.network(dress.image),
            ),
          ),
          Text(dress.name,style: TextStyle(fontWeight: FontWeight.bold),),
          Text("Price: ${dress.price}"),



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
