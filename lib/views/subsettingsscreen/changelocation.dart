import 'package:flutter/material.dart';

class ChangeLocation extends StatefulWidget {
  @override
  _ChangeLocationState createState() => _ChangeLocationState();
}

class _ChangeLocationState extends State<ChangeLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تغيير الموقع'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('أضغط لتحديد الموقع الجديد');
          },
          child: Text('أضغط لتحديد الموقع الجديد'),
        ),
      ),
    );
  }
}
