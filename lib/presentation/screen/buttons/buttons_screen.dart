import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Icon icono = Icon(Icons.accessible);
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            //section: Elevated button
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated')),
            ElevatedButton.icon(
                onPressed: () {}, icon: icono, label: const Text('Elevated')),
            ElevatedButton.icon(
                onPressed: null, icon: icono, label: const Text('Elevated')),
            //section: Filled button
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.tonal(
                onPressed: () {}, child: const Text('Filled tonal')),
            FilledButton.icon(
                onPressed: () {},
                icon: icono,
                label: const Text('Filled icon')),
            FilledButton.tonalIcon(
                onPressed: () {},
                icon: icono,
                label: const Text('Filled icon')),
            const FilledButton(onPressed: null, child: Text('Filled')),
            //section: Outlined button
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
                onPressed: () {}, icon: icono, label: const Text('Outlined')),
            const OutlinedButton(onPressed: null, child: Text('Outlined ')),
            //section: Text button
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
                onPressed: () {}, icon: icono, label: const Text('Text')),
            const TextButton(onPressed: null, child: Text('Text')),
            //section: Icon buttons
            IconButton(
              onPressed: () {},
              icon: icono,
            ),
            IconButton(
              onPressed: () {},
              icon: icono,
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)),
            ),
            //section: Custom buttons
            const CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
