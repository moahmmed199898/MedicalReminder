import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'dart:async';

class BackgroundAnimation extends StatefulWidget{
  final String animationPath;

  BackgroundAnimation(this.animationPath);

  @override
  _BackgroundAnimation createState() => _BackgroundAnimation();
}

class _BackgroundAnimation extends State<BackgroundAnimation> {

  void setEveningTime() {
    _togglePlay();
    Timer(Duration(seconds: 2), _togglePlay);
  }




  void _togglePlay() {
    setState(() => _controller.isActive = !_controller.isActive);
  }

  /// We track if the animation is playing by whether or not the controller is
  /// running.
  bool get isPlaying => _controller?.isActive ?? false;

  Artboard _riveArtboard;
  RiveAnimationController _controller;
  @override
  void initState() {
    super.initState();

    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load(widget.animationPath).then(
          (data) async {
        var file = RiveFile();

        // Load the RiveFile from the binary data.
        var success = file.import(data);
        if (success) {
          // The artboard is the root of the animation and is what gets drawn
          // into the Rive widget.
          var artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(
            _controller = SimpleAnimation('idle'),
          );
          _controller.isActive = false;
          setEveningTime();
          setState(() => _riveArtboard = artboard);
        }
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return _riveArtboard == null
        ? const SizedBox()
        : Rive(artboard: _riveArtboard, fit: BoxFit.fill,);
  }

}