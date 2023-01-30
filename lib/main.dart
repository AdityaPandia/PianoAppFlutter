import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


void main() {
  runApp(xylophone());
}




class xylophone extends StatefulWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  State<xylophone> createState() => _xylophoneState();
}




class _xylophoneState extends State<xylophone> {
  void playSound(int soundNumber){
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
        Audio("assets/note$soundNumber.wav"));
  }
  Widget buildKey(int soundNumber,Color color){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
        ),
        onPressed:(){
          playSound(soundNumber);
        },
        child: Container(
          decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: double.infinity,

        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    buildKey(1,Colors.black),
                    buildKey(2,Colors.white),
                    buildKey(3,Colors.black),
                    buildKey(4,Colors.white),
                    buildKey(5,Colors.black),
                    buildKey(6,Colors.white),
                    buildKey(7,Colors.black),
                  ],
                ),
              ),
              Column(
                children: [
                  Expanded(
                    /*
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Text('hello'),
                    ),*/

                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.brown.shade500,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                              r"ADITYA'S     PIANO",
                            style:TextStyle(
                                fontWeight: FontWeight.bold,
                              fontSize: 50,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Colors.brown[900]!,
                            ),
                          ),
                        ),
                      ),

                      width:120,

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
