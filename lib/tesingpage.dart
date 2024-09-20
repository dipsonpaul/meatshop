import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 50.0;

  void _showSliderBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Adjust Value',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SfSlider(
                min: 0.0,
                max: 100.0,
                value: _sliderValue,
                interval: 20,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (dynamic newValue) {
                  setState(() {
                    _sliderValue = newValue;
                  });
                },
              ),
              SizedBox(height: 10),
              Text('Current Value: $_sliderValue'),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SfSlider in Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showSliderBottomSheet(context),
          child: Text('Show Slider'),
        ),
      ),
    );
  }
}
