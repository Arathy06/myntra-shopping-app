import 'package:flutter/material.dart';
import 'package:flutter_dress_shoppingcart/Views/DressView.dart';
import 'package:flutter_dress_shoppingcart/Views/Dresscart.dart';
import 'package:flutter_dress_shoppingcart/Views/Kidscart.dart';
import 'package:flutter_dress_shoppingcart/Views/Kidsview.dart';
import 'package:flutter_dress_shoppingcart/Views/MenView.dart';
import 'package:flutter_dress_shoppingcart/Views/Mencart.dart';
import 'package:flutter_dress_shoppingcart/main.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Expanded(
          child: Column(
            children: [
              
              UserAccountsDrawerHeader(
                currentAccountPicture: Hero(tag: "pic", 
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://www.logotaglines.com/wp-content/uploads/2016/08/26-1443262056-myntra-logo-image-1200x900.jpg"),
                    )),
                  accountName: Text("Myntra"), 
                  accountEmail: Text("www.myntra.com")),

              Card(
                elevation: 10.0,
                child: ListTile(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dressgrid()));
                  },
                  title: Text("Women"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

              Card(
                elevation: 10.0,
                child: ListTile(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mencart()));
                  },
                  title: Text("Men"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

              Card(
                elevation: 10.0,
                child: ListTile(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Kidscart()));
                  },
                  title: Text("Kids"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
