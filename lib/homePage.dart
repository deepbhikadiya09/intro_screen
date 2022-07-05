import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Guide extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GuideState();
  }
}

class GuideState extends State<Guide> {
  List<Slide> listSlides = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listSlides.add(Slide(
     pathImage: "assets/img/1.jpg",
      backgroundColor: Colors.white,
      title: 'Task Organization',
      styleTitle: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.lightGreen),
      description: 'You can sort out your task based on their importance and urgency, Once you press the add button, For more info visit !',
      styleDescription: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey.shade500,letterSpacing: 1.1),
      backgroundOpacity: 0,
    ));
    listSlides.add(Slide(
      pathImage: "assets/img/2.jpg",
      backgroundColor: Colors.white,
      title: 'Healthy Brain',
      styleTitle: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.lightGreen),
      description: 'You can grow a every time you mark your task as done',
      styleDescription: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey.shade500,letterSpacing: 1.1),
      backgroundOpacity: 0,
    ));
    listSlides.add(Slide(
      pathImage: "assets/img/3.jpg",
      backgroundColor: Colors.white,
      title: 'Successful organization technique',
      styleTitle: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.lightGreen),
      description: 'Learn and share successful organization technique through social commmunity feature',
      styleDescription: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey.shade500,letterSpacing: 1.1),
      backgroundOpacity: 0,
    ));
    listSlides.add(Slide(
      pathImage: "assets/img/4.jpg",
      backgroundColor: Colors.white,
      title: 'Setting Goals',
      styleTitle: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.lightGreen),
      description: 'Add a deadline, descriptiom and reminder for each task you would like to accomplish',
      styleDescription: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey.shade500,letterSpacing: 1.1),
      backgroundOpacity: 0,
    ));
    listSlides.add(Slide(
      pathImage: "assets/img/5.jpg",
      backgroundColor: Colors.white,
      title: 'Track your progress',
      styleTitle: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.lightGreen),
      description: 'You can track your weekly and monthly progress, colours reprents the type of tasks completed',
      styleDescription: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey.shade500,letterSpacing: 1.1),
      backgroundOpacity: 0,
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroSlider(
        backgroundColorAllSlides: Colors.white,
        slides: listSlides,
        showSkipBtn: true,
        showPrevBtn:true,
        renderSkipBtn: Text('Skip'),
        skipButtonStyle:ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),),
        renderPrevBtn: Text('Next'),
        prevButtonStyle: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),),
        renderNextBtn: Text('Next'),
        nextButtonStyle: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        renderDoneBtn: Text('Next'),
        doneButtonStyle: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        onDonePress: () {

        },
        colorActiveDot:Colors.lightGreen,
        sizeDot:10,
        typeDotAnimation:dotSliderAnimation.DOT_MOVEMENT
    );
  }
}