import 'package:flutter/material.dart';
import 'screen_recorder_service.dart';

void main() {
  runApp(ScreenRecorderApp());
}

class ScreenRecorderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perekam Layar',
      home: RecorderHome(),
    );
  }
}

class RecorderHome extends StatefulWidget {
  @override
  _RecorderHomeState createState() => _RecorderHomeState();
}

class _RecorderHomeState extends State<RecorderHome> {
  bool isRecording = false;

  void toggleRecording() async {
    if (isRecording) {
      await ScreenRecorderService.stopRecording();
    } else {
      await ScreenRecorderService.startRecording();
    }
    setState(() => isRecording = !isRecording);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perekam Layar')),
      body: Center(
        child: ElevatedButton(
          onPressed: toggleRecording,
          child: Text(isRecording ? 'Stop Rekam' : 'Mulai Rekam'),
        ),
      ),
    );
  }
}
