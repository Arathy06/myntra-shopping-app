import 'package:flutter/material.dart';
import 'package:flutter_dress_shoppingcart/Model/DressModel.dart';
import 'package:flutter_dress_shoppingcart/Views/Kidsview.dart';
import 'package:flutter_dress_shoppingcart/Views/Mydrawer.dart';


class Kidscart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title:
          Center(child: Text("Myntra", style: TextStyle(color: Colors.orange,fontStyle: FontStyle.italic,fontSize: 30.0),)),
          backgroundColor: Colors.white,
          actions: [

            IconButton(
                color: Colors.black,
                icon: Icon(Icons.add_shopping_cart), onPressed: (){})

          ],
        ),

        drawer: MyDrawer(),

        body:
        Column(
          children: [

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    itemCount: dress.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: .75,
                        crossAxisCount: 2),

                    itemBuilder: (content,index){

                      return Kidsview(kids: kids[index],);



                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
