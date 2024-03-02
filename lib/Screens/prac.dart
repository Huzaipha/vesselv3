// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';

// class practice extends StatefulWidget {
//   const practice({super.key, required String title});

//   @override
//   State<practice> createState() => _practiceState();
// }

// class _practiceState extends State<practice> {
//   late List<AnimatedTextExample> _examples;
//   int _index = 0;
//   int _tapCount = 0;

//   @override
//   void initState() {
//     super.initState();
//     _examples = animatedTextExamples(onTap: () {
//       print('Tap Event');
//       setState(() {
//         _tapCount++;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final animatedTextExample = _examples[_index];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           animatedTextExample.label,
//           style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: Container(),
//           ),
//           Container(
//             decoration: BoxDecoration(color: animatedTextExample.color),
//             height: 300.0,
//             width: 300.0,
//             child: Center(
//               key: ValueKey(animatedTextExample.label),
//               child: animatedTextExample.child,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               alignment: Alignment.center,
//               child: Text('Taps: $_tapCount'),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _index = ++_index % _examples.length;
//             _tapCount = 0;
//           });
//         },
//         tooltip: 'Next',
//         child: const Icon(
//           Icons.play_circle_filled,
//           size: 50.0,
//         ),
//       ),
//     );
//   }
// }

// class AnimatedTextExample {
//   final String label;
//   final Color? color;
//   final Widget child;

//   const AnimatedTextExample({
//     required this.label,
//     required this.color,
//     required this.child,
//   });
// }

// // Colorize Text Style
// const _colorizeTextStyle = TextStyle(
//   fontSize: 50.0,
//   fontFamily: 'Horizon',
// );

// // Colorize Colors
// const _colorizeColors = [
//   Colors.purple,
//   Colors.blue,
//   Colors.yellow,
//   Colors.red,
// ];

// List<AnimatedTextExample> animatedTextExamples({VoidCallback? onTap}) =>
//     <AnimatedTextExample>[
//       AnimatedTextExample(
//         label: 'Rotate',
//         color: Colors.orange[800],
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: <Widget>[
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 const SizedBox(
//                   width: 20.0,
//                   height: 100.0,
//                 ),
//                 const Text(
//                   'Be',
//                   style: TextStyle(fontSize: 43.0),
//                 ),
//                 const SizedBox(
//                   width: 20.0,
//                   height: 100.0,
//                 ),
//                 DefaultTextStyle(
//                   style: TextStyle(
//                     fontSize: 40.0,
//                     fontFamily: 'Horizon',
//                   ),
//                   child: AnimatedTextKit(
//                     animatedTexts: [
//                       RotateAnimatedText('AWESOME'),
//                       RotateAnimatedText('OPTIMISTIC'),
//                       RotateAnimatedText(
//                         'DIFFERENT',
//                         textStyle: const TextStyle(
//                           decoration: TextDecoration.underline,
//                         ),
//                       ),
//                     ],
//                     onTap: onTap,
//                     isRepeatingAnimation: true,
//                     totalRepeatCount: 10,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'Fade',
//         color: Colors.brown[600],
//         child: DefaultTextStyle(
//           style: const TextStyle(
//             fontSize: 32.0,
//             fontWeight: FontWeight.bold,
//           ),
//           child: AnimatedTextKit(
//             animatedTexts: [
//               FadeAnimatedText('do IT!'),
//               FadeAnimatedText('do it RIGHT!!'),
//               FadeAnimatedText('do it RIGHT NOW!!!'),
//             ],
//             onTap: onTap,
//           ),
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'Typer',
//         color: Colors.lightGreen[800],
//         child: SizedBox(
//           width: 250.0,
//           child: DefaultTextStyle(
//             style: const TextStyle(
//               fontSize: 30.0,
//               fontFamily: 'Bobbers',
//             ),
//             child: AnimatedTextKit(
//               animatedTexts: [
//                 TyperAnimatedText('It is not enough to do your best,'),
//                 TyperAnimatedText('you must know what to do,'),
//                 TyperAnimatedText('and then do your best'),
//                 TyperAnimatedText('- W.Edwards Deming'),
//               ],
//               onTap: onTap,
//             ),
//           ),
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'Typewriter',
//         color: Colors.teal[700],
//         child: SizedBox(
//           width: 250.0,
//           child: DefaultTextStyle(
//             style: const TextStyle(
//               fontSize: 30.0,
//               fontFamily: 'Agne',
//             ),
//             child: AnimatedTextKit(
//               animatedTexts: [
//                 TypewriterAnimatedText('Discipline is the best tool'),
//                 TypewriterAnimatedText('Design first, then code', cursor: '|'),
//                 TypewriterAnimatedText('Do not patch bugs out, rewrite them',
//                     cursor: '<|>'),
//                 TypewriterAnimatedText('Do not test bugs out, design them out',
//                     cursor: '💡'),
//               ],
//               onTap: onTap,
//             ),
//           ),
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'Scale',
//         color: Colors.blue[700],
//         child: DefaultTextStyle(
//           style: const TextStyle(
//             fontSize: 70.0,
//             fontFamily: 'Canterbury',
//           ),
//           child: AnimatedTextKit(
//             animatedTexts: [
//               ScaleAnimatedText('Think'),
//               ScaleAnimatedText('Build'),
//               ScaleAnimatedText('Ship'),
//             ],
//             onTap: onTap,
//           ),
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'Colorize',
//         color: Colors.blueGrey[50],
//         child: AnimatedTextKit(
//           animatedTexts: [
//             ColorizeAnimatedText(
//               'Larry Page',
//               textStyle: _colorizeTextStyle,
//               colors: _colorizeColors,
//             ),
//             ColorizeAnimatedText(
//               'Bill Gates',
//               textStyle: _colorizeTextStyle,
//               colors: _colorizeColors,
//             ),
//             ColorizeAnimatedText(
//               'Steve Jobs',
//               textStyle: _colorizeTextStyle,
//               colors: _colorizeColors,
//             ),
//           ],
//           onTap: onTap,
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'TextLiquidFill',
//         color: Colors.white,
//         child: TextLiquidFill(
//           text: 'LIQUIDY',
//           waveColor: Colors.blueAccent,
//           boxBackgroundColor: Colors.redAccent,
//           textStyle: const TextStyle(
//             fontSize: 70,
//             fontWeight: FontWeight.bold,
//           ),
//           boxHeight: 300,
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'Wavy Text',
//         color: Colors.purple,
//         child: DefaultTextStyle(
//           style: const TextStyle(
//             fontSize: 20.0,
//           ),
//           child: AnimatedTextKit(
//             animatedTexts: [
//               WavyAnimatedText(
//                 'Hello World',
//                 textStyle: const TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               WavyAnimatedText('Look at the waves'),
//               WavyAnimatedText('They look so Amazing'),
//             ],
//             onTap: onTap,
//           ),
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'Flicker',
//         color: Colors.pink[300],
//         child: DefaultTextStyle(
//           style: const TextStyle(
//             fontSize: 35,
//             color: Colors.white,
//             shadows: [
//               Shadow(
//                 blurRadius: 7.0,
//                 color: Colors.white,
//                 offset: Offset(0, 0),
//               ),
//             ],
//           ),
//           child: AnimatedTextKit(
//             repeatForever: true,
//             animatedTexts: [
//               FlickerAnimatedText('Flicker Frenzy'),
//               FlickerAnimatedText('Night Vibes On'),
//               FlickerAnimatedText("C'est La Vie !"),
//             ],
//             onTap: onTap,
//           ),
//         ),
//       ),
//       AnimatedTextExample(
//         label: 'Combination',
//         color: Colors.pink,
//         child: AnimatedTextKit(
//           onTap: onTap,
//           animatedTexts: [
//             WavyAnimatedText(
//               'On Your Marks',
//               textStyle: const TextStyle(
//                 fontSize: 24.0,
//               ),
//             ),
//             FadeAnimatedText(
//               'Get Set',
//               textStyle: const TextStyle(
//                 fontSize: 32.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             ScaleAnimatedText(
//               'Ready',
//               textStyle: const TextStyle(
//                 fontSize: 48.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             RotateAnimatedText(
//               'Go!',
//               textStyle: const TextStyle(
//                 fontSize: 64.0,
//               ),
//               rotateOut: false,
//               duration: const Duration(milliseconds: 400),
//             )
//           ],
//         ),
//       ),
//     ];
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }

// ignore_for_file: unused_local_variable, prefer_final_fields, unused_field

// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';

// class practice extends StatefulWidget {
//   const practice({Key? key, required String title}) : super(key: key);

//   @override
//   State<practice> createState() => _practiceState();
// }

// class _practiceState extends State<practice> {
//   double _initial = 0.25;
//   int _currentParagraphIndex = 0;
//   bool _showFirstParagraph = true;

//   final List<String> paragraphs = [
//     "Discover Local Service Easily and Fast.",
//     "Easily find nearby services with our app from plumbers to carpenter etc. Local services discovery made simple.",
//     // Add more paragraphs as needed
//   ];

//   Widget _stepIndicator() {
//     String value = (_initial * 4).toString()[0];
//     return Column(
//       children: [
//         Text(
//           "Step $value of 5",
//           style: TextStyle(color: Colors.white),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         MaterialButton(
//           shape: CircleBorder(),
//           onPressed: () {
//             setState(() {
//               _initial = _initial + 0.25;
//               _showFirstParagraph = !_showFirstParagraph;
//             });
//           },
//           child: Stack(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(
//                   left: 7,
//                   top: 6,
//                 ),
//                 child: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.orange,
//                 ),
//               ),
//               CircularProgressIndicator(
//                 value: _initial,
//                 color: Colors.orange,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//       ],
//     );
//   }

//   Widget MainBody() {
//     return Container(
//       height: 150,
//       child: AnimatedTextKit(
//         isRepeatingAnimation: true,
//         totalRepeatCount: 10,
//         animatedTexts: [
//           RotateAnimatedText(
//             "Convience",
//             textStyle: const TextStyle(
//               fontSize: 32,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Lato",
//               color: Colors.orange,
//             ),
//           ),
//           RotateAnimatedText(
//             "Efficiency",
//             textStyle: const TextStyle(
//               fontSize: 32,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Lato",
//               color: Colors.orange,
//             ),
//           ),
//           RotateAnimatedText(
//             "Reliability",
//             textStyle: const TextStyle(
//               fontSize: 32,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Lato",
//               color: Colors.orange,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget lowerBody() {
//     return Column(
//       children: [
//         Container(
//           padding: EdgeInsets.only(bottom: 30),
//           child: Column(
//             children: [
//               if (_showFirstParagraph)
//                 Text(
//                   paragraphs[0],
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontFamily: "Lato",
//                     color: Colors.orange,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               if (!_showFirstParagraph)
//                 Text(
//                   paragraphs[1],
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 13,
//                     fontFamily: "Lato",
//                     color: Colors.white,
//                   ),
//                 ),
//             ],
//           ),
//         ),
//         _stepIndicator(),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       body: Center(
//         child: Stack(
//           children: [
//             Image.asset(
//               "images/transparentlogo.png",
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 MainBody(),
//                 lowerBody(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

// import 'package:flutter/material.dart';

// class practice extends StatefulWidget {
//   const practice({super.key, required String title});

//   @override
//   State<practice> createState() => _practiceState();
// }

// class _practiceState extends State<practice> {
//   AppBar buildAppBar() {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//     );
//   }

//   int _currentIndex = 0;
//   List<Widget> body = [
//     //For Home
//           Icon(Icons.abc),
//     //for Notification
//     Icon(Icons.notifications),
//     //For Camera
//     ElevatedButton(
//       onPressed: () {
//         // PageRouting.goToNextPage(
//         //     context: context,
//         //     navigateTo: HomeScreen(
//         //       title: '',
//         //     ));
//       },
//       child: Text(
//         "Sign In",
//         style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "Lato"),
//       ),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.grey[900],
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         minimumSize: Size(450, 50),
//       ),
//     ),
//     //Help
//     Icon(Icons.help),
//     //For Profile
//     Icon(Icons.person),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(),
//       backgroundColor: Colors.white,
//       body: ListView(
//         children: [
//           Container(
//             child: body[_currentIndex],
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (int newIndex) {
//           setState(() {
//             _currentIndex = newIndex;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             label: "Home",
//             icon: Icon(
//               Icons.home,
//               color: Colors.black,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: "Notification",
//             icon: Icon(
//               Icons.notifications,
//               color: Colors.black,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: "Detect",
//             icon: Icon(
//               Icons.camera,
//               color: Colors.black,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: "Help",
//             icon: Icon(
//               Icons.help,
//               color: Colors.black,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: "Profile",
//             icon: Icon(
//               Icons.person,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//       // SafeArea(
//       //   child: ListView(
//       //     scrollDirection: Axis.vertical,
//       //     physics: BouncingScrollPhysics(),
//       //     children: [
//       //       Column(
//       //         children: [
//       //           // MainBody(),
//       //         ],
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_animated_icons/lottiefiles.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  String? _selectOne;

  late AnimationController _settingController;
  late AnimationController _favoriteController;
  late AnimationController _menuController;
  late AnimationController _bellController;
  late AnimationController _bookController;

  @override
  void initState() {
    super.initState();

    _settingController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _favoriteController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _menuController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bellController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat();
    _bookController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _settingController.dispose();
    _favoriteController.dispose();
    _menuController.dispose();
    _bellController.dispose();
    _bookController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /// Tap with animation example
              Column(
                children: [
                  InkWell(
                    onDoubleTap: () {
                      setState(() {
                        _selectOne = null;
                      });
                    },
                    onTap: () {
                      setState(() {
                        _selectOne = "Yes";
                      });
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: _selectOne == "Yes" ? Colors.blue : null,
                      ),
                      child: Center(child: Text("Y")),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () {
                      setState(() {
                        _selectOne = null;
                      });
                    },
                    onTap: () {
                      setState(() {
                        _selectOne = "no";
                      });
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: _selectOne == "no" ? Colors.yellow : null,
                      ),
                      child: Center(
                        child: Text("N"),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Tap'),
                  ),
                  IconButton(
                    splashRadius: 50,
                    iconSize: 100,
                    onPressed: () {
                      _settingController.reset();
                      _settingController.forward();
                    },
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Lottie.asset(Icons8.adjust,
                          controller: _settingController),
                    ),
                  ),
                ],
              ),

              /// Toggle example
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Toggle'),
                  ),
                  IconButton(
                    splashRadius: 50,
                    iconSize: 100,
                    onPressed: () {
                      if (_favoriteController.status ==
                          AnimationStatus.dismissed) {
                        _favoriteController.reset();
                        _favoriteController.animateTo(0.6);
                      } else {
                        _favoriteController.reverse();
                      }
                    },
                    icon: Lottie.asset(Icons8.heart_color,
                        controller: _favoriteController),
                  ),
                ],
              ),

              /// Hover example
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Hover'),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      _bookController.repeat();
                    },
                    onExit: (event) {
                      _bookController.stop();
                    },
                    child: IconButton(
                      splashRadius: 50,
                      iconSize: 100,
                      onPressed: () {
                        if (_bookController.status ==
                            AnimationStatus.dismissed) {
                          _bookController.reset();
                          _bookController.animateTo(1);
                        } else {
                          _bookController.reverse();
                        }
                      },
                      icon: Lottie.asset(Icons8.book,
                          controller: _bookController,
                          height: 60,
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ],
              ),

              /// repeat example
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Repeat'),
                  ),
                  IconButton(
                    splashRadius: 50,
                    iconSize: 100,
                    onPressed: () {
                      print(_bellController.status);
                      if (_bellController.isAnimating) {
                        // _bellController.stop();
                        _bellController.reset();
                      } else {
                        _bellController.repeat();
                      }
                    },
                    icon: Lottie.asset(LottieFiles.$63128_bell_icon,
                        controller: _bellController,
                        height: 60,
                        fit: BoxFit.cover),
                  ),
                ],
              ),

              /// change color example
              // To change color, goto https://lottiefiles.com/editor
              // original color
              // changed color
            ],
          ),
        ),
      ),
    );
  }
}
