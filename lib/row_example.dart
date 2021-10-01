import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // return buildRow();
     return RowWitException();
  }

  buildRow()
  {
    return
      Container(
      height: 200,
      color: Colors.pink[200],
      child:
      Row(
        //textDirection: TextDirection.rtl,
       // mainAxisSize: MainAxisSize.min,
       // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            width: 70,
            height: 70,
            child: Text('1',style: TextStyle(fontSize: 30,color: Colors.black),),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.pink,
            width: 70,
            height: 70,
            child: Text('2',style: TextStyle(fontSize: 30,color: Colors.black),),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.indigo,
            width: 70,
            height: 70,
            child: Text('3',style: TextStyle(fontSize: 30,color: Colors.black),),
          )
        ],
     ),
    );
  }

  RowWitException()
  {  // To Solve this problem, USE ListView
    return Row(
      children: [
        Container(
          color: Colors.yellow,
          width: 200,
          height: 70,
        ),
        Container(
          color: Colors.pink,
          width: 200,
          height: 70,
        ),
        Container(
          color: Colors.indigo,
          width: 200,
          height: 70,
        )
      ],
    );
  }
}
