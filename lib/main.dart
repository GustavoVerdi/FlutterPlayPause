import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const VideoPlayerApp());
}

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Video Player App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// Tela Principal
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha um vídeo'),
        backgroundColor: const Color.fromARGB(255, 18, 3, 186),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            VideoListTile(
                videoPath: 'assets/video1.mp4',
                videoName: 'Música Happy Nation',
                context: context),
            VideoListTile(
                videoPath: 'assets/video2.mp4',
                videoName: 'TOP 20 Stock Car Moments By JPeltsi',
                context: context),
          ],
        ),
      ),
    );
  }
}

class VideoListTile extends StatelessWidget {
  final String videoPath;
  final String videoName;
  final BuildContext context;

  const VideoListTile({
    required this.videoPath,
    required this.videoName,
    required this.context,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          videoName,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('Clique para assistir'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VideoPlayerScreen(videoPath: videoPath),
            ),
          );
        },
      ),
    );
  }
}

// Tela de Reprodução do Vídeo
class VideoPlayerScreen extends StatefulWidget {
  final String videoPath;

  const VideoPlayerScreen({super.key, required this.videoPath});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/seta.png',
            width: 30,
            height: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Reproduzindo vídeo'),
        backgroundColor: const Color.fromARGB(255, 18, 3, 186),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_controller.value.isInitialized)
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                });
              },
              child: Image.asset('assets/a-pausa.png', height: 40, width: 40),
            ),
          ],
        ),
      ),
    );
  }
}
