import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product_detail.dart';

class ProductDetail extends StatefulWidget {
  final product_detail_name;
  final product_detail_newprice;
  final product_detail_oldprice;
  final product_detail_picture;

 ProductDetail({
  this.product_detail_name,
  this.product_detail_newprice,
   this.product_detail_oldprice,
   this.product_detail_picture,

});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
    actions: <Widget>[
    new IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: (){}),
    new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){})
    ],
    ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.product_detail_oldprice}",
                        style:  TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                        child: new Text("\$${widget.product_detail_newprice}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                      ),
                    ],
                  ),

                ),
              ),
            ),
          ),
          // ==== the size buttons
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Chose the size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("Close"),
                        )
                      ],
                    );
                  }
                  );
                },
                color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size")
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              // ==== the color buttons

              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Chose the color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("Close"),
                            )
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Color")
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              // ==== the qty buttons

              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Chose the Qty"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("Close"),
                            )
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Qty")
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
              children: <Widget>[
          Expanded(
          child: MaterialButton(onPressed: (){},
          color: Colors.red,
          textColor: Colors.white,
          elevation: 0.2,
          child: new Text("Buy Now")
          ),
          ),
                new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red,onPressed: (){},),
                new IconButton(icon: Icon(Icons.favorite_border),color: Colors.red, onPressed: (){},)
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product detail"),
            subtitle: new Text("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAa"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Brand K"),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condittion", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),)
            ],
          ),

        ],
      ),

    );
  }
}
