import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:uas_mobile/screens/catalogueMatic_screen.dart';

class ProductMaticScreen extends StatefulWidget {
  static const String id = 'productmatic_screen';
  @override
  _ProductMaticScreenState createState() => _ProductMaticScreenState();
}

class _ProductMaticScreenState extends State<ProductMaticScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        centerTitle: true,
        title: Text('Katalog Matic'),
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
                        pressedImage: Image.network('https://www.astra-honda.com/uploads/products/63228.jpg'),
                        label: Text('BeAT'),
                        unpressedImage: Image.network('https://www.astra-honda.com/uploads/products/63228.jpg'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CatalogueMatic();
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
                        pressedImage: Image.network('https://www.astra-honda.com/uploads/products/25637.jpg'
                        ),
                        label: Text('Vario'),
                        unpressedImage: Image.network('https://www.astra-honda.com/uploads/products/25637.jpg'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CatalogueMatic();
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
                        pressedImage: Image.network('https://www.astra-honda.com/uploads/products/66178.png'),
                        label: Text('ADV 150'),
                        unpressedImage: Image.network('https://www.astra-honda.com/uploads/products/66178.png'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CatalogueMatic();
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
                        pressedImage: Image.network('https://www.astra-honda.com/uploads/products/88723.png'
                        ),
                        label: Text('PCX 150'),
                        unpressedImage: Image.network('https://www.astra-honda.com/uploads/products/88723.png'),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CatalogueMatic();
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