import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/widgets/MyButton.dart';

class WelcomeScreen extends StatefulWidget {

  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

    AnimationController controller;
    Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds:1),
      vsync: this,
      //upperBound: 80.0
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();
    // controller.reverse(from: 1.0);

    // animation.addStatusListener((status){
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from:1.0);
    //   }else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    //   // print(status);
    // });

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);


    controller.addListener((){
      setState(() {});
      print(animation.value);
    });

  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red.withOpacity(controller.value),
      // backgroundColor: Colors.white,
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                    // height: controller.value,
                    // height: animation.value * 100,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  // '${controller.value.toInt()}%',
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            MyButton(
              cor: Colors.lightBlueAccent, 
              titulo: 'Log In',
              onPressed: (){Navigator.pushNamed(context, LoginScreen.id);}
            ),
            MyButton(
              cor: Colors.blueAccent, 
              titulo: 'Register',
              onPressed: (){Navigator.pushNamed(context, RegistrationScreen.id);}
            ),
          ],
        ),
      ),
    );
  }
}
