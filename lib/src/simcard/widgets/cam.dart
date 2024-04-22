import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    // Garante que o Flutter esteja inicializado antes de acessar a câmera
     WidgetsFlutterBinding.ensureInitialized();
    // Obtém a lista de câmeras disponíveis e inicializa a câmera
     availableCameras().then((cameras) async{
      if (cameras.isEmpty) {
        // Exibe uma mensagem se não houver câmeras disponíveis
        print('Nenhuma câmera disponível');
      } else {
        // Inicializa a câmera com a primeira câmera disponível
        _controller = CameraController(
          cameras[0],
          ResolutionPreset.ultraHigh,
        );

        // Inicializa o controlador da câmera e define o estado de inicialização
        _controller.initialize().then((_) async{
          if (!mounted) return;
          setState(() {
            _isCameraInitialized = true;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isCameraInitialized) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: SizedBox(height: 200, child: CameraPreview(_controller)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        child: const Icon(Icons.camera, size: 25),
        onPressed: () async {
          final image = await _controller.takePicture();
          // ignore: use_build_context_synchronously
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Captured Image'),
              content: Image.network(image.path),
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
}


// Scaffold(
//       appBar: AppBar(title: const Text('Camera Demo')),
//       body: Container(width: 200, height: 200, child: CameraPreview(_controller)),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.camera),
//         onPressed: () async {
//           try {
//             // Captura a foto e armazena no diretório temporário
//             final image = await _controller.takePicture();

//             // Exibe a foto capturada
//             showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                 title: Text('Captured Image'),
//                 content: Image.network(image.path),
//                 actions: [
//                   TextButton(
//                     child: Text('OK'),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                 ],
//               ),
//             );
//           } catch (e) {
//             // Exibe um erro se houver problemas ao capturar a foto
//             print('Erro ao capturar a foto: $e');
//           }
//         },
//       ),
//     );