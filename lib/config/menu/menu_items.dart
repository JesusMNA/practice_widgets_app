import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Cards',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'SnackBars and dialogs',
    subTitle: 'Screen indicators',
    link: '/snackbar',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subTitle: 'Statefull widget animated',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'Ui Controls + Tiles',
    subTitle: 'Controls in flutter',
    link: '/ui_controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'App Introduction',
    subTitle: 'Small introductory tutorial',
    link: '/app_tutorial',
    icon: Icons.accessibility_rounded,
  ),
  MenuItem(
    title: 'Infinite Scroll & Pull',
    subTitle: 'Infinite screens and pull to refresh',
    link: '/infinite_scroll',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Counter Screen',
    subTitle: 'Counter Screen using Riverpod',
    link: '/counter_screen',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Theme Changer',
    subTitle: 'Change App theme',
    link: '/theme_changer',
    icon: Icons.color_lens_outlined,
  ),
];
