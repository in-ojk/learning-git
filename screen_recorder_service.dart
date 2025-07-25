import 'package:screen_recorder/screen_recorder.dart';

class ScreenRecorderService {
  static final _recorder = ScreenRecorder();

  static Future<void> startRecording() async {
    await _recorder.startRecordScreen();
  }

  static Future<void> stopRecording() async {
    await _recorder.stopRecordScreen();
  }
}
