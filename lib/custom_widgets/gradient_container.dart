
import 'package:flutter/material.dart';
import 'package:roller_dice/custom_widgets/dice_roller.dart';
import 'package:roller_dice/custom_widgets/style_text.dart';


const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;
class GradientContainer extends StatefulWidget {
  GradientContainer(this.color,{super.key});
  List<Color> color;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(colors: widget.color,
              begin: startAlignment ,
              end:endAlignment

          )
      ),
      child:  Center(
          child: DiceRoller()
      ),
    );
  }
}