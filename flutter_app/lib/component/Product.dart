import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product_detail.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list= [
  {
    "name":"ao thun",
    "picture":"images/product/aothun.jpg",
    "old_price":150,
    "price":120,
  },
    {
      "name":"quan thun",
      "picture":"images/product/quanthun.jpg",
      "old_price":150,
      "price":120,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
      itemBuilder: (BuildContext context,int index){
        return Single_pro(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_oldprice: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}
class Single_pro extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;
  Single_pro({
    this.prod_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>new ProductDetail(
            product_detail_name: prod_name,
            product_detail_newprice: prod_price,
            product_detail_oldprice: prod_oldprice,
            product_detail_picture: prod_picture,
          ))),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text(
                  "\$$prod_price",
                  style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800),
                ),
                subtitle: Text(
                  "\$$prod_oldprice",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.lineThrough
                  ),
                ),
              ),
            ),
            child: Image.asset(prod_picture,
            fit: BoxFit.cover,),
          ),
          ),
        ),
      ),
    );
  }
}
