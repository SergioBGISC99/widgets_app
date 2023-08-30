import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const String name = 'ui-controls_screen';
  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI Controls'),
        ),
        body: _UIControlsView());
  }
}

class _UIControlsView extends StatefulWidget {
  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Develover mode'),
          subtitle: const Text('Controles adicionales'),
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
            title: const Text('Vehículo de transporte'),
            subtitle: Text('$selectedTransportation'),
            children: [
              RadioListTile(
                  value: Transportation.car,
                  title: const Text('Por auto'),
                  subtitle: const Text('Viajar por auto'),
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.car;
                      })),
              RadioListTile(
                  value: Transportation.plane,
                  title: const Text('Por avión'),
                  subtitle: const Text('Viajar por avión'),
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.plane;
                      })),
              RadioListTile(
                  value: Transportation.boat,
                  title: const Text('Por bote'),
                  subtitle: const Text('Viajar por barco'),
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.boat;
                      })),
              RadioListTile(
                  value: Transportation.submarine,
                  title: const Text('Por submarino'),
                  subtitle: const Text('Viajar por submarino'),
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.submarine;
                      })),
              CheckboxListTile(
                  value: wantsBreakfast,
                  title: const Text('¿Quiere desayuno?'),
                  onChanged: (value) => setState(() {
                        wantsBreakfast = !wantsBreakfast;
                      })),
              CheckboxListTile(
                  value: wantsLunch,
                  title: const Text('¿Quiere almuerzo?'),
                  onChanged: (value) => setState(() {
                        wantsLunch = !wantsLunch;
                      })),
              CheckboxListTile(
                  value: wantsDinner,
                  title: const Text('¿Quiere cena?'),
                  onChanged: (value) => setState(() {
                        wantsDinner = !wantsDinner;
                      }))
            ]),
      ],
    );
  }
}
