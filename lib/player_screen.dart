import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Music Player'),
        ),
        body: Center(
          child: MusicPlayerWidget(),
        ),
      ),
    );
  }
}

class MusicPlayerWidget extends StatefulWidget {
  @override
  _MusicPlayerWidgetState createState() => _MusicPlayerWidgetState();
}

class _MusicPlayerWidgetState extends State<MusicPlayerWidget> {
  String _songName = 'DESIGN BY THE EM23';
  String _artistName = 'DAO CRESTA LA CULTURA';
  String _playlistName = 'Energy';
  double _progress = 0.34; // 34%
  String _status = 'Bankai';

  void _playPause() {
    // Add code to play/pause the music here
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _songName,
          style: TextStyle(fontSize: 24),
        ),
        Text(
          _artistName,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 16),
        Text(
          'Playing from playlist: $_playlistName',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
        LinearProgressIndicator(
          value: _progress,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${(_progress * 100).toStringAsFixed(0)}%',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: _playPause,
              child: Text(_status),
            ),
          ],
        ),
      ],
    );
  }
}