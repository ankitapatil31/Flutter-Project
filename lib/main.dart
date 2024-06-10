import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:learning_project/utils/routes.dart';
import 'package:learning_project/view/onbording/on_bording_view.dart';
import 'package:learning_project/view/common/color_extenstion.dart';
import 'package:learning_project/view/pages/SubOptions.dart';
import 'package:learning_project/view/pages/cameraformeasurement.dart';

void main  () async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras =await availableCameras();
  runApp(MyApp( cameras : cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({required this.cameras , super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xactsize',
      theme: ThemeData(
        primaryColor: XactSizeColor.primaryColor1,
      ),
      home: const OnBordingView(),
      //initialRoute: OnBordingView(),
      routes: {
        MyRoutes.camera: (context) => CameraScreen(cameras: cameras,),
        MyRoutes.suboptions: (context) => Suboptions()
      },

      debugShowCheckedModeBanner: false,
    );
  }
}
