import 'package:flutter/material.dart';

import './Pages/FourtyOneHundred.dart';
import './Pages/SixtyOneHundredThirty.dart';

main() {
   runApp(TrackDayTv());
}

class TrackDayTv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFF3B7CE9);

    return MaterialApp(
      theme: ThemeData(
        primaryColor: PrimaryColor,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
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
              
              indicatorColor: Colors.white,
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
          ),
          body: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            children: [
              FourtyOneHundred(),
              SixtyOneHundredThirty(),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () {},
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: new Row (
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.filter), onPressed: () {},),
                IconButton(icon: Icon(Icons.grid_on), onPressed: () {},),
              ],
            )
          ),
        ),
      ),
    );
  }
}

