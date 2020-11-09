import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';


void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "Ammendment Slip NO 51";

  String date = "30/08/2020";

  String l1 = "Hindi", l2 = "English";

  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Colors.red,
            selectedItemBackgroundColor: Colors.white,
            selectedItemIconColor: Colors.black,
            selectedItemBorderColor: Colors.black,
          ),
          selectedIndex: selectedIndex,
          onSelectTab: (index){
            setState(() {
              selectedIndex=index;
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.home,
              label: 'home',
              itemWidth: 70,
            ),
            FFNavigationBarItem(
              iconData: Icons.time_to_leave,
              label: 'Vehicle',
              itemWidth: 70,
            ),
            FFNavigationBarItem(
              iconData: Icons.search,
              label: 'search',
              itemWidth: 70,
            ),
            FFNavigationBarItem(
              iconData: Icons.message,
              label: 'Messages',
              itemWidth: 70,
            ),
            FFNavigationBarItem(
              iconData: Icons.file_download,
              label: 'download',
              itemWidth: 70,
            ),
          ],
        ),
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.directions_car,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "SERVICE MANAGER",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notification_important,
                            color: Colors.purple,
                            size: 35,
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "RULES AND UPDATES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "DEPARTMENT",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Material(
                                borderRadius: BorderRadius.circular(20),
                                child: MaterialButton(
                                  child: Row(
                                    children: [
                                      Text(
                                        "PW1",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      DropdownButton(
                                        icon: Icon(
                                          Icons.arrow_downward,
                                          color: Colors.red,
                                        ),
                                      )
                                    ],
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent[100],
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomButton("G&SR Collection"),
                              ),
                              Expanded(
                                child: CustomButton("Correction Slip"),
                              ),
                              Expanded(
                                child: CustomButton("Accident Manual"),
                              ),
                              Expanded(
                                child: CustomButton("Operating Manual"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 10,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Table(
                                      children: [
                                        TableRow(
                                          children: [
                                            TableCell(
                                              child: Column(
                                                children: [
                                                  Text(name,style: TextStyle(fontSize: 14,color: Colors.blue[900]),),
                                                  Text(date,style: TextStyle(fontSize: 15,color: Colors.grey)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            TableCell(
                                              child: Text(l1,style: TextStyle(fontSize: 15,color: Colors.red))
                                            ),
                                            TableCell(
                                              child: Text(l2,style: TextStyle(fontSize: 15,color: Colors.red),),
                                            )
                                          ]
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {
   String display;
   CustomButton(this.display);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Material(
        color: Colors.greenAccent[100],
        borderRadius: BorderRadius.circular(20),
        child: MaterialButton(
          disabledColor: Colors.greenAccent[100],
          child: Text(
            display,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13, color: Colors.red),
          ),
          onPressed: (){

          },
        ),
      ),
    );
  }
}
