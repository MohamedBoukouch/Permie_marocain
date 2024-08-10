import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

class NarsaHome extends StatefulWidget {
  const NarsaHome({super.key});

  @override
  _NarsaHomeState createState() => _NarsaHomeState();
}

class _NarsaHomeState extends State<NarsaHome> {
  bool _isConnected = true;

  @override
  void initState() {
    super.initState();
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    final ConnectivityResult result = (await Connectivity().checkConnectivity()) as ConnectivityResult;
    setState(() {
      _isConnected = result != ConnectivityResult.none;
    });
    if (!_isConnected) {
      _showNoConnectionDialog();
      print("no connexion");
    }
  }

  void _showNoConnectionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("No Internet Connection"),
          content: const Text("Please check your Wi-Fi connection."),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NARSA",
          style: TextStyle(fontFamily: 'cairo'),
        ),
      ),
      body: _isConnected
          ? StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('narsa_videos').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return const Center(child: Text("Error loading videos"));
                }

                if (snapshot.hasData) {
                  final videos = snapshot.data!.docs;

                  return PageView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      final videoData = videos[index];
                      final videoUrl = videoData['url'];
                      final videoTitle = videoData['title'];

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              videoTitle,
                              style: const TextStyle(
                                fontFamily: 'cairo',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ReelVideoWidget(videoUrl: videoUrl),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      );
                    },
                  );
                }

                return const Center(child: Text("No videos available"));
              },
            )
          : const Center(child: Text("Please check your Wi-Fi connection.")),
    );
  }
}

class ReelVideoWidget extends StatefulWidget {
  final String videoUrl;

  const ReelVideoWidget({required this.videoUrl});

  @override
  _ReelVideoWidgetState createState() => _ReelVideoWidgetState();
}

class _ReelVideoWidgetState extends State<ReelVideoWidget> {
  late VideoPlayerController _controller;
  bool _isLoading = true;
  bool _isPlaying = true;
  bool _isMuted = false;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          _isLoading = false;
        });
        _controller.play();
        _controller.setLooping(true);
      }).catchError((error) {
        setState(() {
          _isLoading = false;
        });
        print("Error initializing video: $error");
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    if (_isFullScreen) {
      _exitFullScreen();
    }
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  void _toggleMuteUnmute() {
    setState(() {
      if (_isMuted) {
        _controller.setVolume(1.0);
        _isMuted = false;
      } else {
        _controller.setVolume(0.0);
        _isMuted = true;
      }
    });
  }

  void _toggleFullScreen() {
    setState(() {
      if (_isFullScreen) {
        _exitFullScreen();
      } else {
        _enterFullScreen();
      }
      _isFullScreen = !_isFullScreen;
    });
  }

  void _enterFullScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  void _exitFullScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(child: CircularProgressIndicator())
        : Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              if (!_isPlaying)
                IconButton(
                  icon: const Icon(
                    Icons.play_circle_filled,
                    color: Colors.white,
                    size: 60,
                  ),
                  onPressed: _togglePlayPause,
                ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        _isMuted ? Icons.volume_off : Icons.volume_up,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: _toggleMuteUnmute,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.fullscreen,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: _toggleFullScreen,
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
