import 'package:flutter/material.dart';

class ContainerConfigurator extends StatefulWidget {
  @override
  _ContainerConfiguratorState createState() => _ContainerConfiguratorState();
}

class _ContainerConfiguratorState extends State<ContainerConfigurator> {
  double _containerWidth = 100.0;
  double _containerHeight = 100.0;
  double _topRightRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Configurator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [



            Text("Width: ${_containerWidth.toStringAsFixed(0)}"),
            Slider(
              value: _containerWidth,
              min: 50,
              max: 300,
              onChanged: (value) {
                setState(() {
                  _containerWidth = value;
                });
              },
            ),

            Text("Height: ${_containerHeight.toStringAsFixed(0)}"),
            Slider(
              value: _containerHeight,
              min: 50,
              max: 300,
              onChanged: (value) {
                setState(() {
                  _containerHeight = value;
                });
              },
            ),

            Text("Top Right Radius: ${_topRightRadius.toStringAsFixed(0)}"),
            Slider(
              value: _topRightRadius,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _topRightRadius = value;
                });
              },
            ),
            const SizedBox(height: 24),
            
            Container(
              width: _containerWidth,
              height: _containerHeight,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(_topRightRadius),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContainerConfigurator(),
  ));
}
