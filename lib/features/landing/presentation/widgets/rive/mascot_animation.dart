import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class StateMachineMuscot extends StatefulWidget {
  const StateMachineMuscot({super.key});

  @override
  StateMachineMuscotState createState() => StateMachineMuscotState();
}

class StateMachineMuscotState extends State<StateMachineMuscot> {
  Artboard? riveArtboard;
  SMIBool? isDance; //wait change value
  SMITrigger? isLookUp; //one time

  @override
  void initState() {
    super.initState();

    loadRiveFile();
  }

  Future<void> loadRiveFile() async {
    try {
      // Inicializa Rive antes de importar el archivo
      await RiveFile.initialize();

      final data = await rootBundle.load('images/rive/dash_flutter_mascot.riv');
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      var controller = StateMachineController.fromArtboard(artboard, 'birb');
      if (controller != null) {
        artboard.addController(controller);
        isDance = controller.findSMI('dance');
        isLookUp = controller.findSMI('look up');
      }
      setState(() => riveArtboard = artboard);
    } catch (e) {
      // Muestra un mensaje de error en la interfaz
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading Rive file: $e')),
      );
    }
  }

  void toggleDance(bool newValue) {
    setState(() => isDance!.value = newValue);
  }

  @override
  Widget build(BuildContext context) => riveArtboard == null
      ? const SizedBox()
      : AspectRatio(
          aspectRatio: 1,
          child: Rive(
            artboard: riveArtboard!,
          ),
        );
}
