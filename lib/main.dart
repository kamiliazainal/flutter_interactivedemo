import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [

                FlatButton(
                    onPressed: () {
                      print('I click Flat Button');
                    },
                    child: Text('Flat Button')
                    ),

                RaisedButton(
                  onPressed: () {
                  print('I click Raised Button');
                },
                child: Text('Raised Button')
                ),
                OutlineButton(
                  onPressed: () {
                      print('I click Outline Button');
                    },
                    child: Text('Outline Button')
                ),
                IconButton(
                  icon: Icon(Icons.star), 
                  onPressed: () {
                      print('I click Icon Button');
                    }),
                SizedBox(
                  height: 70,
                  child: RaisedButton.icon(
                    onPressed: () {
                        print('I click Raised Button Icon');
                      }, 
                    icon: Icon(Icons.star, color: Colors.blue, size:50),
                    color: Colors.yellow,
                    label: Text('Raised Button Icon',style: TextStyle(fontSize:20, color: Colors.blue))),
                ),
                OutlineButton.icon(
                   onPressed: () {
                      print('I click Outline Button Icon');
                    }, 
                  icon: Icon(Icons.star, color: Colors.blue,),
                  label: Text('Outline Button Icon', style: TextStyle(color: Colors.blue),)),

                InkWell(
                  onTap: (){
                      print('I click Picture Button');
                  },
                  child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
                  width:200,
                  height:150,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
