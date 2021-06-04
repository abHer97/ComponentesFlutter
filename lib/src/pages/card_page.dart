import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0, //ayuda a aumentar o disminuir la sombra
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)), // cambia los bordes
      child: Column(
        children: [
          ListTile(
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Aqui estamos con la descripcion de la tarjeta que quiero que ustedes vean para que tengan una idea del error que quiero mostrarles'),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip
          .antiAlias, // es como overflow: hidden, si no funciona, ver codigo abajo
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage('https://wallpapercave.com/wp/wp4600617.jpg'),
            height: 200.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://wallpapercave.com/wp/wp4600617.jpg'),
          // ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No tengo idea de que poner xD'))
        ],
      ),
    );

    /*
    final card2 = Card(
      clipBehavior: Clip
          .antiAlias, // es como overflow: hidden, si no funciona, ver codigo abajo
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage('https://wallpapercave.com/wp/wp4600617.jpg'),
            height: 200.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://wallpapercave.com/wp/wp4600617.jpg'),
          // ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No tengo idea de que poner xD'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card2,
      ),
    );
     */
  }
}
