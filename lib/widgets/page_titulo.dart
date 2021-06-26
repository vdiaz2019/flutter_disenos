import 'package:flutter/material.dart';


class PageTitleScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {



    return Container(
      margin: EdgeInsets.symmetric( horizontal: 20.0 ),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white )),
            SizedBox( height: 10 ),
            Text('Classify this transaction into a particular category', style: TextStyle( fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white )),
          ]
     ),
      ),
   );
  }
}