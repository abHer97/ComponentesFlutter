import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  // InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';

  String _opcionSeleccionada = 'Volar';

  List _poderes = ['Volar', 'Rayos X', 'Super aliento', 'Super fuerza'];

  TextEditingController _inputfieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lista de inputs de tipo texto',
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Divider(),
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lista de inputs de seleccion',
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
        // print(_nombre);
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('El nombre es $_nombre'),
      subtitle: Text('El email de la persona es $_email'),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_email.length}'),
          hintText: 'Email de la persona',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
        // print(_nombre);
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_email.length}'),
          hintText: 'Password del email',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
        // print(_nombre);
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputfieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_email.length}'),
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          helperText: 'Solo es el password',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        locale: Locale('es'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputfieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> _getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = opt.toString();
              });
            },
            items: _getOpcionesDropdown(),
            dropdownColor: Colors.blue,
            iconSize: 30.0,
            isExpanded: true,
          ),
        ),
      ],
    );
  }
}
