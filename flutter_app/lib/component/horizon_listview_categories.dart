import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Categories(
            image_location:'images/categories/iconao.png',
            image_caption: 'AO',
          ),
          Categories(
            image_location:'images/categories/iconaosomi.jpg',
            image_caption: 'AO SOMI',
          ),Categories(
            image_location:'images/categories/iconbikini.png',
            image_caption: 'BIKINI',
          ),Categories(
            image_location:'images/categories/icondam.jpg',
            image_caption: 'AO DAM',
          ),Categories(
            image_location:'images/categories/iconquan.jpg',
            image_caption: 'QUAN',
          ),Categories(
            image_location:'images/categories/iconquanlot.png',
            image_caption: 'QUAN LOT',
          ),Categories(
            image_location:'images/categories/iconvay.png',
            image_caption: 'VAY',
          )
        ],
      ),
    );
  }
}
class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Categories(
  {this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
      child: Container( width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,
          width: 100.0,
          height: 80.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption,style: new TextStyle(fontSize: 12.0),),
          ),
        ),
      ),
      ),
    );
  }
}

