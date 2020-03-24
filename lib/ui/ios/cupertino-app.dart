import 'package:flutter/cupertino.dart';
import 'package:imc_flutter/ui/ios/pages/home.page.dart';

class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "IMC",
      home: HomePage(),
    );
  }
}
