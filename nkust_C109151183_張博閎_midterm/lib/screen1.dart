import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen1 extends StatelessWidget {

  final String s1='我是c109151183四資三甲的學生張博閎，希望期中考能夠拿高分!';

  @override
  Widget build(BuildContext context) {

    final player=AudioPlayer();
    player.play(AssetSource("assets/test.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Text("Who am I",
                              style: TextStyle(fontSize:24,
                                               fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Colors.amberAccent,
                                               offset: Offset(6, 6)),
                        ],),
            child:Text(s1,
                       style: TextStyle(fontSize: 20),),
            ),

           Container(
             color: Colors.redAccent,
             child: Image.asset('images/f1.jpg'),
             height: 200,
             width: 200,
           ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                            image: AssetImage('images/f1.jpg'),
                            fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/f1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
