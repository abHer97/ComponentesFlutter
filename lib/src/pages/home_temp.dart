import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  // List<Widget> _crearItems(){

  //   List<Widget> lista = [];

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     lista..add(tempWidget)
  //          ..add(Divider(
  //            height: 2,
  //            color: Colors.blue,
  //          ));
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorto() => opciones.map((opcion) => Column(
    children: [
      ListTile(
          title: Text(opcion + '!'),
          subtitle: Text('cualquier cosa'),
          leading: Icon(Icons.account_balance_wallet),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        Divider(color: Colors.blue,),
    ],
  )).toList();
}