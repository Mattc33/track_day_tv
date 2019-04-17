import 'package:flutter/material.dart';

class FourtyOneHundred extends StatefulWidget {
  @override
  FourtyOneHundredState createState() {
    return new FourtyOneHundredState();
  }
}

class FourtyOneHundredState extends State<FourtyOneHundred> {
  Widget bodyData() => DataTable(
    onSelectAll: (b) {},
    columns: <DataColumn>[
      DataColumn(
        label: Text("Year"),
      ),
      DataColumn(
        label: Text("Car"),
      ),
      DataColumn(
        label: Text("Mods"),
      ),
      DataColumn(
        label: Text("Est. BHP"),
      ),
      DataColumn(
        label: Text("Run DA"),
      ),
      DataColumn(
        label: Text("Run Time"),
      ),
      DataColumn(
        label: Text("Corrected Time"),
      ),
    ],
    rows: cars
      .map(
        (eaCar) => DataRow(
          cells: [
            DataCell(
              Text(eaCar.year),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Text(eaCar.car),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Text(eaCar.mods),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Text(eaCar.estBHP),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Text(eaCar.runDA),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Text(eaCar.runTime),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Text(eaCar.correctedTime),
              showEditIcon: false,
              placeholder: false,
            ),
          ],
        ),
      )
      .toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: bodyData(),
      ),
    );
  }
}

class Car {
  String year;
  String car;
  String mods;
  String estBHP;
  String runDA;
  String runTime;
  String correctedTime;

  Car(
    {
      this.year, 
      this.car, 
      this.mods, 
      this.estBHP, 
      this.runDA, 
      this.runTime, 
      this.correctedTime
    }
  );
}

var cars = <Car>[
  Car(year: "2019", car: "Corvette C7Z06 (A8)", mods: "stock", estBHP: "650", runDA: "2000", runTime: "4.56", correctedTime: "4.46" ),
  Car(year: "2018", car: "Audi TT RS", mods: "unitronic s2 tune, downpipe", estBHP: "520", runDA: "2000", runTime: "4.71", correctedTime: "4.82" ),
  Car(year: "2017", car: "Corvette C7Z06 (M7)", mods: "stock + 100 octane", estBHP: "650", runDA: "400", runTime: "4.90", correctedTime: "4.91" ),
];