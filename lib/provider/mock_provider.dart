import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MockProvider with ChangeNotifier {
  final AssetBundle bundle;

  List<Uint8List> dogImages = [];

  bool initialized = false;

  MockProvider({required this.bundle}) {
    loadMockData();
  }

  Future loadMockData() async {
    dogImages = [
      for (var i = 0; i <= 5; i++)
        (await bundle.load('img/mocks/cute_dog$i.jpg')).buffer.asUint8List(),
    ];
    initialized = true;
    notifyListeners();
  }
}
