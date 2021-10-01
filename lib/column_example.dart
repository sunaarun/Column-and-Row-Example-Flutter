import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildColumn();
  // return columnWithException();
   // return columnWithException2();
   // return buildListWithColumn();
   // return buildListWithColumnWithException();
   // return ColumnInsideColumn();

  }

  buildColumn() {
    //To understand CROSSAxiAlignment , wrap with Container
    return Container(
      color: Colors.pink[200],
      width: 400,
     // height: 300,
      child: Column(
        //verticalDirection: VerticalDirection.up,
      // mainAxisSize: MainAxisSize.min,
      //  mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: [
          Container(
            color: Colors.yellow,
            width: 70,
            height: 70,
          ),
          Container(
            color: Colors.pink,
            width: 70,
            height: 70,
          ),
          Container(
            color: Colors.indigo,
            width: 70,
            height: 70,
          )
        ],
      ),
    );
  }
  columnWithException() {
    /*
      TODO to solve this problem, we can wrap the ListView with
      another widget like : Container and give height to , or Expanded,
      or SizedBox , Flexible

       Expanded(
        child: ListView(
          children: const [Text('List 1'), Text('List 2')],
        ),
      ),
       Container(
       height:200
        child: ListView(
          children: const [Text('List 1'), Text('List 2')],
        ),
      ),
       Flexible(
        child: ListView(
          children: const [Text('List 1'), Text('List 2')],
        ),
      ),
     */
    return Column(children: [
      const Text('Text1'),
      const Text('text2'),
      Container(
        height: 200,
        child: ListView(
          children: const [Text('List 1'), Text('List 2')],
        ),
      ),
    ]);
  }
  columnWithException2() {
    /*
      TODO to solve this problem, USE  ListView or any other Scrollable Widgets

     */
    return Column(children: [
      Container(
        color: Colors.yellow,
        width: 70,
        height: 200,
      ),
      Container(
        color: Colors.pink,
        width: 70,
        height: 200,
      ),
      Container(
        color: Colors.indigo,
        width: 70,
        height: 200,
      )
    ,
    ]);
  }


  buildListWithColumn(){
    return ListView(
      children: [
        Column(
          children: [
            Text('C1'),
            Text('C2'),
          ],
        ),
        Container(color:Colors.deepPurple, width: 70,height: 70,)
      ],
    );
  }
  buildListWithColumnWithException(){
    // To solve this exception , we need to remove Expanded widget
    return ListView(
      children: [
        Expanded(
          child: Column(
            children: [
              Text('Column inside Expanded inside List'),
              Text('C2'),
            ],
          ),
        ),
        Container(color:Colors.deepPurple, width: 70,height: 70,)
      ],
    );
  }
  ColumnInsideColumn() {
    return Column(children: [
      const Text('Text1'),
      const Text('text2'),
      Column(
        children: [
          Text('inside c'),
          Text('inside c')
        ],
      )
      // ListView(
      //   children: const [Text('List 1'), Text('List 2')],
      // ),
    ]);
  }
}
