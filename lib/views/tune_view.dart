import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
   const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.blue, sound:'note2.wav'),
    TuneModel(color: Colors.yellow, sound:'note3.wav'),
    TuneModel(color: Colors.pink, sound: 'note4.wav'),
   TuneModel(color: Colors.green, sound: 'note5.wav'),
   TuneModel(color: Colors.orange, sound: 'note6.wav'),
   TuneModel(color: Colors.purple, sound: 'note7.wav'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:  Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
        // getTuneItems(),
        
      ),
    );
  }

 // List<TuneItem> getTuneItems() {
  //  List<TuneItem> items = [];

   // for (var element in tuneColors) {
   //   items.add(TuneItem(
   //     color: element,
   //   ));
   // }
//    return items;
  //}
}
