import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contendor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Indicador de progreso',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subtitle: 'Indiadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subtitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.animation_outlined),
  MenuItem(
      title: 'UI Controls',
      subtitle: 'Controles de usuario',
      link: '/ui-controls',
      icon: Icons.control_point_sharp),
  MenuItem(
      title: 'Tutorial',
      subtitle: 'Ejemplo de tutorial en app',
      link: '/tutorial',
      icon: Icons.abc_outlined),
  MenuItem(
      title: 'Infinite Scroll y Pull',
      subtitle: 'Infinite Scroll en aplicación',
      link: '/infinite',
      icon: Icons.list_alt_outlined)
];
