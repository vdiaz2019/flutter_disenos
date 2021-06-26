import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('https://capturelandscapes.com/wp-content/uploads/2017/03/DSC2441-Panorama.jpeg'),
            height: 300.0,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 30.0,),
          Title(),
          SizedBox(height: 30.0,),
          Botonera(),
          SizedBox(height: 30.0,),
          Container(
            margin: EdgeInsets.symmetric( horizontal: 25.0 ),
            child: Text('Lorem ipsum dolor sit amet consectetur adipiscing elit condimentum, luctus eros cras facilisis mus aptent et ac, rhoncus dictumst enim augue at imperdiet volutpat. Ridiculus egestas integer tellus pulvinar vel donec, porta congue vivamus ultrices tempus est litora, libero cras leo class et. Neque vitae turpis integer nisl sem nulla quam orci, facilisis sed risus praesent molestie augue suscipit est, nec morbi sodales nascetur commodo blandit dictumst.')
          )
        ],
     ),
   );
  }
}

class Botonera extends StatelessWidget {
  const Botonera({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton( text: 'CALL', icon: Icons.call ),
        CustomButton( text: 'ROUTE', icon: Icons.moped_sharp ),
        CustomButton( text: 'SHARE', icon: Icons.share ),
      ]
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.icon, color: Colors.blue,),
        SizedBox( height: 10.0 ),
        Text( this.text, style: TextStyle( color: Colors.blue ), )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 25.0, ),
      child: Row( 
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold),),
              SizedBox( height: 5.0, ),
              Text('Kanderteg, Switerland', style: TextStyle( color: Colors.black54), )
            ],
          ),
          Expanded(child: Container()),
          Icon( Icons.star, color: Colors.red),
          Text( '41' )
        ],
      ),
    );
  }
}