import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'provide/counter.dart';

class FitstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
         child:Padding(
      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Column(
        children: <Widget>[
          Provide<CounterProvide>(
            builder: (context, child, counter) {
              return Text(
                '${counter.value}',
                style: TextStyle(fontSize: 30.0),
              );
            },
          ),
          RaisedButton(
            onPressed: () {
              Provide.value<CounterProvide>(context).increment();
             
            // Provider.of<Counter>(context, listen: false).increment(); 
            },
            child: Text('增加'),
          ),
        ],
      ),
    )));
  }
}