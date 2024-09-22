import 'package:flutter/material.dart';

void customSnackBar(context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Cannot Launch URL"),
    ),
  );
}