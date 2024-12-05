import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class StateMachineMuscot extends StatefulWidget {
  const StateMachineMuscot({Key? key}) : super(key: key);

  @override
  _StateMachineMuscotState createState() => _StateMachineMuscotState();
}

class _StateMachineMuscotState extends State<StateMachineMuscot> {
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

      final data = await rootBundle.load('rive/dash_flutter_mascot.riv');
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
      : Column(
          children: [
            SizedBox(
              height: 300,
              child: Rive(
                artboard: riveArtboard!,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Dance'),
                Switch(
                  value: isDance!.value,
                  onChanged: (value) => toggleDance(value),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              child: const Text('Look up'),
              onPressed: () => isLookUp?.value = true,
            ),
            const SizedBox(height: 12),
          ],
        );
}
