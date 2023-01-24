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
        body: SingleChildScrollView(
            child: FutureBuilder<AndroidDeviceInfo>(
      future: getInfo(),
      builder: (context, snapshot) {
        final data = snapshot.data!;
        return Column(
          children: [
            showCard('board', data.board),
            showCard('bootloader', data.bootloader),
            showCard('brand', data.brand),
            showCard('device', data.device),
            showCard('display', data.display),
            showCard('fingerprint', data.fingerprint),
            showCard('hardware', data.hardware),
            showCard('host', data.host),
            showCard('manufacturer', data.manufacturer),
            showCard('model', data.model),
            showCard('product', data.product),
            showCard('supported32BitAbis', data.supported32BitAbis.toString()),
            showCard('supported64BitAbis', data.supported64BitAbis.toString()),
            showCard('tags', data.tags),
            showCard('type', data.type),
            showCard('isPhysicalDevice', data.isPhysicalDevice.toString()),
            showCard('androidId', data.id),
            showCard('systemFeatures', data.systemFeatures.toString()),
            showCard('version', data.version.release.toString()),
          ],
        );
      },
    )));
  }

}

//  class DeviceInfo {
//   DeviceInfo({
//     required this.board,
//     required this.bootloader,
//     required this.brand,
//     required this.device,
//     required this.display,
//     required this.fingerprint,
//     required this.hardware,
//     required this.host,
//     required this.manufacturer,
//     required this.model,
//     required this.product,
//     required this.supported32BitAbis,
//     required this.supported64BitAbis,
//     required this.tags,
//     required this.type,
//     required this.isPhysicalDevice,
//     required this.id,
//     required this.systemFeatures,
//     required this.versionRelease,

//   });
//   late String board;
//   late String bootloader;
//   late String brand;
//   late String device;
//   late String display;
//   late String fingerprint;
//   late String hardware;
//   late String host;
//   late String manufacturer;
//   late String model;
//   late String product;
//   late String supported32BitAbis;
//   late String supported64BitAbis;
//   late String tags;
//   late String type;
//   late String isPhysicalDevice;
//   late String id;
//   late String systemFeatures;
//   late String versionRelease;
    
//   }