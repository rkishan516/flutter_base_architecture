import 'package:flutter/material.dart';
import 'package:flutter_base_architecture/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
