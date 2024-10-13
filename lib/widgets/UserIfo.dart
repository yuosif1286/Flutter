import 'package:flutter/material.dart';

class Userifo extends InheritedWidget {
  final String Name;
  const Userifo({super.key, required this.Name, required child})
      : super(child: child);

  static Userifo? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Userifo>();
  }

  @override
  bool updateShouldNotify(Userifo oldWidget) {
    return true;
  }
}
