// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'dart:convert';
import 'package:camera/camera.dart';

class CameraPhoto extends StatefulWidget {
  const CameraPhoto({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _CameraPhotoState createState() => _CameraPhotoState();
}

class _CameraPhotoState extends State<CameraPhoto> {
  CameraController? controller;
  late Future<List<CameraDescription>> _cameras;
  int selectedCameraIndex = 0; // Integer to track the selected camera index
  String? imageBase64; // String to store the captured image in base64 format

  @override
  void initState() {
    super.initState();
    _cameras = availableCameras();
  }

  @override
  void didUpdateWidget(covariant CameraPhoto oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (FFAppState().makePhoto) {
      controller!.takePicture().then((file) async {
        Uint8List fileAsBytes = await file.readAsBytes();
        final base64 = base64Encode(fileAsBytes);

        FFAppState().update(() {
          FFAppState().fileBase64 = base64;
        });
        FFAppState().update(() {
          FFAppState().makePhoto = false;
        });
      }).catchError((error) {});
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _switchCamera(List<CameraDescription> cameras) {
    if (cameras.isEmpty) return;

    selectedCameraIndex =
        (selectedCameraIndex + 1) % cameras.length; // Cycle through cameras
    controller = CameraController(
      cameras[selectedCameraIndex],
      ResolutionPreset.max,
    );

    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((error) {
      print('Error initializing camera: $error');
    });
  }

  Future<void> _takePicture() async {
    if (!controller!.value.isInitialized) {
      return;
    }

    try {
      final file = await controller!.takePicture();
      Uint8List fileAsBytes = await file.readAsBytes();
      final base64 = base64Encode(fileAsBytes);

      setState(() {
        imageBase64 = base64;
      });
    } catch (e) {
      print('Error taking picture: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CameraDescription>>(
      future: _cameras,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            if (controller == null) {
              controller = CameraController(
                snapshot.data![selectedCameraIndex],
                ResolutionPreset.max,
              );
              controller!.initialize().then((_) {
                if (!mounted) {
                  return;
                }
                setState(() {});
              });
            }
            return controller!.value.isInitialized
                ? MaterialApp(
                    home: Scaffold(
                      body: Stack(
                        alignment: Alignment.center,
                        children: [
                          CameraPreview(controller!),
                          Positioned(
                            bottom: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                  onPressed: () =>
                                      _switchCamera(snapshot.data!),
                                  child: Icon(Icons.switch_camera),
                                ),
                                FloatingActionButton(
                                  onPressed: _takePicture,
                                  child: Icon(Icons.camera),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container();
          } else {
            return Center(child: Text('No cameras available.'));
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
