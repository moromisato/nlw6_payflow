import 'package:camera/camera.dart';
import 'package:nlw6_payflow/modules/barcode_scanner/barcode_scanner_status.dart';

class BarcodeScannerController {
  BarcodeScannerStatus status = BarcodeScannerStatus();

  void getAvailableCamera() async {
    try {
      final response = await availableCameras();
      final camera = response.firstWhere(
          (element) => element.lensDirection == CameraLensDirection.back);

      final cameraController =
          CameraController(camera, ResolutionPreset.max, enableAudio: false);

      status = BarcodeScannerStatus.available(cameraController);
    } catch (error) {
      status = BarcodeScannerStatus.error(error.toString());
    }
  }
}
