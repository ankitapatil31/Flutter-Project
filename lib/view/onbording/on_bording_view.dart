import 'package:flutter/material.dart';
import '../pages/home.dart';
class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnBordingView> {
  get builder => null;

  @override
  void initState(){
    super.initState();
    _navigateToHome();
  }
  _navigateToHome()async{
    await Future.delayed(const Duration(seconds: 2),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MyHomePage(title: 'Explore1',)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white,
            Color(0xff14b9d2),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center( child: Image.asset('assets/images/logoSplash.png',width: 200,fit: BoxFit.fitWidth,)),
        ),
      ),
    );
  }
}
