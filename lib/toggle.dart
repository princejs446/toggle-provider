import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_provider/toggle_provider.dart';
class ToggleScreen extends StatefulWidget{
  @override  
  _ToggleScreenState createState()=>_ToggleScreenState();
}
class _ToggleScreenState extends State<ToggleScreen>{
 @override  
  Widget build(BuildContext context){
    final toggleprovider=Provider.of<ToggleProvider>(context);
    return GestureDetector(
    child:  Scaffold(
      appBar: AppBar(
        title: Text('Toggle Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              toggleprovider.isOn?'ON':'OFF',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:toggleprovider.toggleSwitch,
             child: Text(toggleprovider.isOn?'Turn OFF':'Turn ON'),
             ),
          ],
        ),
      ),
    ),
    );
  }
}
  