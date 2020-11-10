import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/component/horizon_listview_categories.dart';
import 'package:flutter_app/component/Product.dart';
import 'package:flutter_app/pages/cart.dart';



    void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
    }
    class HomePage extends StatefulWidget {
      @override
      _HomePageState createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
      @override
      Widget build(BuildContext context) {
        Widget image_carousel = new Container(
          height: 200.0,
          child: new CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: [1,2,3,4].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                      ),
                    child: Image.asset('images/carousel/qc1.png'),
                  );
                },
              );
            }).toList(),
          ),
        );

        return Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.red,
            title: Text('ShopApp'),
            actions: <Widget>[
              new IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: (){}),
              new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              })
            ],
          ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                //header
                new UserAccountsDrawerHeader(accountName: Text(""),
                  accountEmail: Text(""),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                ),
                ),
                //body
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text("Home Page"),
                    leading: Icon(Icons.home),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text("My account"),
                    leading: Icon(Icons.person),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
                  },
                  child: ListTile(
                    title: Text("My orders"),
                    leading: Icon(Icons.shopping_basket_sharp),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text("Categoris"),
                    leading: Icon(Icons.dashboard),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text("Favorites"),
                    leading: Icon(Icons.favorite),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help),
                  ),
                ),
              ],
            ),
          ),
          body: new ListView(
            children: <Widget>[
              image_carousel,
              //paddding
              new Padding(padding: const EdgeInsets.all(10.0),
              child: new Text("Categories"),
              ),
              // Horizontal listv here
              HorizonList(),
              new Padding(padding: new EdgeInsets.all(20.0),
                child: new Text('SAN PHAM NOI BAT'),
              ),
              //gridview
              Container(height: 320.0,
                child: Product(),
              )
            ],
          ),
        );
      }
    }



