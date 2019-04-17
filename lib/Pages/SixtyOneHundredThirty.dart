import 'package:flutter/material.dart';

class SixtyOneHundredThirty extends StatefulWidget {
  @override
  SixtyOneHundredThirtyState createState() {
    return new SixtyOneHundredThirtyState();
  }
}

class SixtyOneHundredThirtyState extends State<SixtyOneHundredThirty> {
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
  Car(year: "2019", car: "Corvette C7Z06 (A8)", mods: "stock", estBHP: "650", runDA: "2000", runTime: "7.84", correctedTime: "7.66" ),
  Car(year: "2017", car: "Corvette C7Z06 (M7)", mods: "exhaust, ported tb", estBHP: "700", runDA: "500", runTime: "7.30", correctedTime: "7.26" ),
  Car(year: "2017", car: "Corvette C7Z06 (M7)", mods: "stock", estBHP: "707", runDA: "1200", runTime: "7.95", correctedTime: "7.84" ),
];