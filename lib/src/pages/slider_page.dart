import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  // SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool? _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _sliderValue,
      onChanged: _bloquearCheck == true
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
      label: 'Tamanio de la imagen',
      min: 10.0,
      max: 400.0,
      // divisions: 20,
      activeColor: Colors.indigoAccent,
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
      title: Text('Bloquear slider'),
    );
    // Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (value) {
    //       setState(() {
    //         _bloquearCheck = value;
    //       });
    //     });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      value: _bloquearCheck == true ? true : false,
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
      title: Text('Bloquear slider'),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static.wikia.nocookie.net/batman/images/d/d0/TB-Batman.png/revision/latest/top-crop/width/360/height/450?cb=20120508141950&path-prefix=es'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }
}
