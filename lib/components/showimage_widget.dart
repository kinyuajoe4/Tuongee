import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'showimage_model.dart';
export 'showimage_model.dart';

class ShowimageWidget extends StatefulWidget {
  const ShowimageWidget({
    super.key,
    this.passedimage,
  });

  final FFUploadedFile? passedimage;

  @override
  State<ShowimageWidget> createState() => _ShowimageWidgetState();
}

class _ShowimageWidgetState extends State<ShowimageWidget> {
  late ShowimageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowimageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.memory(
            widget.passedimage?.bytes ?? Uint8List.fromList([]),
            width: 300.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
