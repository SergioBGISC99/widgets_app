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
      body: _UIControlsView(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;

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
        RadioListTile(
            value: Transportation.car,
            title: const Text('Por auto'),
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.car;
                })),
        RadioListTile(
            value: Transportation.plane,
            title: const Text('Por avión'),
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.plane;
                })),
        RadioListTile(
            value: Transportation.boat,
            title: const Text('Por bote'),
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.boat;
                })),
        RadioListTile(
            value: Transportation.submarine,
            title: const Text('Por submarino'),
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.submarine;
                }))
      ],
    );
  }
}
