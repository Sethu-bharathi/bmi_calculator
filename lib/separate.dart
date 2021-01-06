import 'package:flutter/material.dart';
class Gendercards extends StatelessWidget {

  final IconData Gender;
  final String g;
  Gendercards({this.Gender,this.g});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Gender,
          size:80,
        ),
        SizedBox(
          height: 13,
        ),
        Text(
            g
        ),
      ],
    );
  }
}

class Cards extends StatelessWidget {
//  String gender;
  Widget cardChild;
  Color x;
  Cards({this.cardChild,this.x});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: x,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
class button extends StatelessWidget {
 final IconData icon;
 final Function onpressed;
 final String a;
 button({this.icon,this.onpressed,this.a});

  @override
  Widget build(BuildContext context) {
    return Container(child:
    FloatingActionButton(
      backgroundColor: Color(0xFF4b4e51),
      heroTag: a,
      onPressed:onpressed,
      child:Icon(icon,
        color: Colors.white,),),);
  }
}


class bottombutton extends StatelessWidget {
  final String title;
  Function ontap;

  bottombutton({this.title, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
      ontap,
      child: Container(
        padding: EdgeInsets.only(top: 15),
        height: 50,
        width: double.infinity,
        color: Colors.red[400],
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
