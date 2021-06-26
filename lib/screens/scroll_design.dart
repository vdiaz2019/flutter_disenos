import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: AlignmentDirectional.bottomCenter,
        stops: [
          0.5, 0.5
        ],
        colors: [
          Color(0xff5EE8C5),
          Color(0xff30BAD6)
        ]
      )
    );

    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2()
          ],
        ),
      ),
   );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Hola');
          },
          child: Padding(
            padding: EdgeInsets.symmetric( horizontal: 30.0 ),
            child: Text( 'Bienvenido', style: TextStyle( color: Colors.white, fontSize: 24 ), ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder(),
            elevation: 5.0
          ),
          // style: TextButton(),
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        MainContent()
      ],
     );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 56.0 );

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox( height: 100.0 ),
          Container(
            margin: EdgeInsets.only( top: 50, bottom: 50 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('11º', style: textStyle,)
              ]
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Miércoles', style: textStyle,)
            ]
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon( Icons.keyboard_arrow_down, color: Colors.white, size: 100, )
            ]
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image( 
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}