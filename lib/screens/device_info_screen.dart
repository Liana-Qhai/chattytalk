import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';


//device info screen -- where all available information regarding the devices are shown
class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({super.key});

  @override
  State<DeviceInfoScreen> createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  AndroidDeviceInfo? androidInfo;
  Future<AndroidDeviceInfo> getInfo() async {
    return await deviceInfo.androidInfo;
  }

  Widget showCard(String name, String value) {
    return Card(
      child: ListTile(
        title: Text(
          "$name : $value",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: FutureBuilder<AndroidDeviceInfo>(
      future: getInfo(),
      builder: (context, snapshot) {
        final data = snapshot.data!;
        return Column(
          children: [
            showCard('brand', data.brand),
            showCard('device', data.device),
            showCard('model', data.model),
            showCard('manufacturer', data.manufacturer),
            showCard('product', data.product),
            showCard('hardware', data.hardware),
            showCard('isPhysicalDevice', data.isPhysicalDevice.toString()),
            showCard('version', data.version.release.toString()),
          ],
        );
      },
    )));
  }
}