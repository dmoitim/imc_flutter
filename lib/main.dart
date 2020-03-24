import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:imc_flutter/ui/android/material-app.dart';
import 'package:imc_flutter/ui/ios/cupertino-app.dart';

void main() =>
    Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());
