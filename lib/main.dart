import 'package:flutter/material.dart';
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {

  late String status;
  Permission? permission;



  @override
  void initState() {
    super.initState();
    status = 'Select an item';
    print(Permission.values);
  }

  requestPermission() async {
    //bool res = await SimplePermissions.requestPermission(permission);
    final res = await permission?.request();
    print('Permissiosn result is ${res.toString()}');

    setState(() {
      status = '${permission.toString()} = ${res.toString()}';

    });
  }

  checkPermission() async {
    //bool res = await SimplePermissions.checkPermission(permission);
    final res = await permission?.status;
    print('Permissiosn result is ${res.toString()}');

    setState(() {
      status = '${permission.toString()} = ${res.toString()}';
    });
  }

  getPermissionStatus() async {
    //bool res = await SimplePermissions.getPermissionStatus(permission);
    final res = await permission?.request().isGranted;
    print('Permissiosn result is ${res.toString()}');

    setState(() {
      status = '${permission.toString()} = ${res.toString()}';
    });
  }

  onDropDownChanged(Permission? permission) {
    setState(() {
      this.permission = permission!;
      status = 'Click a button below';
    });
    print(permission);

  }


  openSettings() async {

       print(permission);
  }




  List<DropdownMenuItem<Permission>> _getDropDownItems() {
    List<DropdownMenuItem<Permission>> items = [];
    Permission.values.forEach((permission) {
      var item = DropdownMenuItem(child: Text(permission.toString()), value: permission,);
      items.add(item);
    });

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(status),
                DropdownButton(items: _getDropDownItems(),value: permission, onChanged: onDropDownChanged),
                ElevatedButton(onPressed: checkPermission, child: Text('Check Permission'),),
                ElevatedButton(onPressed: requestPermission, child: Text('Request Permission'),),
                ElevatedButton(onPressed: getPermissionStatus, child: Text('Get Status'),),
                ElevatedButton(onPressed: openSettings, child: Text('Open Settings'),),
              ],
            ),
          )
      ),
    );
  }
}
