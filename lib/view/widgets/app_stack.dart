import 'package:flutter/material.dart';

class AppStack extends StatelessWidget {
  const AppStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/Polygon.png',fit:BoxFit.fitHeight,width: double.infinity,),
        Image.asset('images/Ellipse.png',fit:BoxFit.fitHeight,width: double.infinity,),


      ],
    );
  }
}