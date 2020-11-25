import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:uas_mobile/screens/CatalogueSport_screen.dart';

class ProductSportScreen extends StatefulWidget {
  static const String id = 'productsport_screen';
  @override
  _ProductSportScreenState createState() => _ProductSportScreenState();
}

class _ProductSportScreenState extends State<ProductSportScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        centerTitle: true,
        title: Text('Katalog Sport'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                children: [
                  TableRow( children: [
                    Column(children:<Widget>[
                      ImageButton(
                        children: <Widget>[],
                        width: 200,
                        height: 200,
                        paddingTop: 5,
                        pressedImage: Image.network('https://www.astra-honda.com/uploads/products/62973.png'),
                        label: Text('CBR 150R'),
                        unpressedImage: Image.network('https://www.astra-honda.com/uploads/products/62973.png'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CatalogueSport();
                          }));
                        },
                      ),
                    ]),
                    Column(children: <Widget>[
                      ImageButton(
                        children: <Widget>[],
                        width: 200,
                        height: 200,
                        paddingTop: 5,
                        pressedImage: Image.network('https://www.astra-honda.com/uploads/products/83819.png'
                        ),
                        label: Text('Sonic 150R'),
                        unpressedImage: Image.network('https://www.astra-honda.com/uploads/products/83819.png'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CatalogueSport();
                          }));
                        },
                      ),
                    ]),
                  ]),
                  TableRow( children: [
                    Column(children:<Widget>[
                      ImageButton(
                        children: <Widget>[],
                        width: 200,
                        height: 200,
                        paddingTop: 5,
                        pressedImage: Image.network('https://www.astra-honda.com/uploads/products/88640.png'),
                        label: Text('CRF 150L'),
                        unpressedImage: Image.network('https://www.astra-honda.com/uploads/products/88640.png'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CatalogueSport();
                          }));
                        },
                      ),
                    ]),
                    Column(children: <Widget>[
                      ImageButton(
                        children: <Widget>[],
                        width: 200,
                        height: 200,
                        paddingTop: 5,
                        pressedImage: Image.network('https://www.astra-honda.com/uploads/products/66455.png'
                        ),
                        label: Text('CBR 250RR'),
                        unpressedImage: Image.network('https://www.astra-honda.com/uploads/products/66455.png'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CatalogueSport();
                          }));
                        },
                      ),
                    ]),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}