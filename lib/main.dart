import 'package:flutter/material.dart';
import 'device.dart';
import 'device_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Device> devices = [
    Device("Wifi Router", Icons.rss_feed_rounded),
    Device("Television", Icons.tv),
    Device("Air Conditioner", Icons.ac_unit_outlined),
    Device("Study Lamp", Icons.light),
    Device("Massage Chair", Icons.chair_outlined),
    Device("Air Condition", Icons.ac_unit),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Controller App - Saif"),
        ),
        body: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: GridView.count(
            childAspectRatio: (140 / 100),
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: devices.map((device) {
              return DeviceContainer(device);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
