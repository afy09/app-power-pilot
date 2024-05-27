import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';

class ARScreen extends StatefulWidget {
  const ARScreen({super.key});

  @override
  _ARScreenState createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  late ArCoreController arCoreController;

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AR View'),
      ),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
        enableTapRecognizer: true,
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    arCoreController.onPlaneTap = _handleOnPlaneTap;
  }

  void _handleOnPlaneTap(List<ArCoreHitTestResult> hits) {
    final hit = hits.first;
    // _add3DObject(hit);
  }

  // void _add3DObject(ArCoreHitTestResult plane) {
  //   final node = ArCoreReferenceNode(
  //     name: "3dmodel",
  //     objectUrl: "assets/3d_model.gltf", // Ganti dengan nama file model 3D Anda
  //     position: plane.pose.translation,
  //     rotation: plane.pose.rotation,
  //   );
  //   arCoreController.addArCoreNodeWithAnchor(node);
  // }
}
