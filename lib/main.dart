import 'package:flutter/material.dart';

void main() => runApp(ImageCard());

class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
            appBar: AppBar(
              title: Text('Tarjetas de Garcia'),
              actions: <Widget>[
                IconButton(
                  icon:Icon(Icons.add_a_photo), 
                  onPressed:(){},
                  ),
              ],
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  _items('https://th.bing.com/th/id/R429f86be26d34b4c86523e8ef13ceb4f?rik=%2fkO773iKAKifDA&pid=ImgRaw',"Teclado"),
                  SizedBox(height: 5.0,),
                   _items('https://www.kalofone.com/3173-large_default/camara-digital-canon-eos-t6-kit-18-55mm.jpg',"Camara"),
                  SizedBox(height: 5.0,),
                  _items('https://http2.mlstatic.com/bocina-bluetooth-wireless-contra-agua-jbl-xtreme-D_NQ_NP_716947-MLM31905968992_082019-F.jpg',"Bocina"),
                  SizedBox(height: 5.0,),
                  _items('https://hardzone.es/app/uploads-hardzone.es/2018/04/memoria-pactar-precios-edit.jpg',"Memoria RAM"),
                  SizedBox(height: 5.0,),
                  _items('https://lh4.googleusercontent.com/proxy/brqMj1ObAFFo46ne344G87I6zofviifroCaLgpHqeDAbIWjg5HrzPXIukDJt4J8wvjQ=w1200-h630-p-k-no-nu',"Pantalla"),
                  SizedBox(height: 5.0,),
                  _items('https://raw.githubusercontent.com/Felixgar/Mis_imagenes/main/186532444_491448938758929_6918165435552262323_n.jpg',"Yo"),
                  SizedBox(height: 5.0,),
                ],
              ),
            )
          ),//fin de scaffold
    );//fin de material app
  }//fin de widget build
  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.green,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('SSD de 256 GB en buen estado',
                      style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}//fin de mi tarjeta