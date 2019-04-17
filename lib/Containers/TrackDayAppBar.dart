import 'package:flutter/material.dart';

class TrackDayAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              fit: BoxFit.contain,
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(8.0), child: Text('Track Day TV')
            )
          ],
        ),
        bottom: TabBar(
          tabs: [
            Tab(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.directions_car), 
                  SizedBox(width: 5.0),
                  Text('40-100')
                ],
              )
            ),
            Tab(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.directions_car), 
                  SizedBox(width: 5.0),
                  Text('60-130')
                ],
              )
            ),
          ],
        ),
      );
  }
}
