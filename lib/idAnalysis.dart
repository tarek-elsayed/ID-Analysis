import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdAnalysis extends StatefulWidget {
  @override
  _IdAnalysisState createState() => _IdAnalysisState();
}

class _IdAnalysisState extends State<IdAnalysis> {
  onPress() {
    setState(() {
      String id1 = ID.text[13];
      print(id1);

      int sex1 = int.parse(ID.text[12]);

      if (sex1 == 1 || sex1 == 3 || sex1 == 5 || sex1 == 7 || sex1 == 9) {
        sex = 'Male';
      } else {
        sex = 'Female';
      }
      Country = (ID.text[7] + ID.text[8]);
      int con = int.parse(Country);
      switch ((con)) {
        case 01:
          {
            Country = 'Cairo';
          }
          break;
        case 02:
          {
            Country = 'Alex';
          }
          break;
        case 03:
          {
            Country = 'PorSaid';
          }
          break;
        case 04:
          {
            Country = 'Suze';
          }
          break;
        case 11:
          {
            Country = 'Domuat';
          }
          break;
        case 12:
          {
            Country = 'Dakahleya';
          }
          break;
        case 13:
          {
            Country = 'Sharkeya';
          }
          break;
        case 14:
          {
            Country = 'Qalubeya';
          }
          break;
        case 15:
          {
            Country = 'Kafr Elshikh';
          }
          break;
        case 16:
          {
            Country = 'Gharbiya';
          }
          break;
        case 17:
          {
            Country = 'Monofiya';
          }
          break;
        case 18:
          {
            Country = 'Bihera';
          }
          break;
        case 19:
          {
            Country = 'Ismaaleya';
          }
          break;
        case 21:
          {
            Country = 'Gize';
          }
          break;
        case 22:
          {
            Country = 'Bane Swaif';
          }
          break;
        case 23:
          {
            Country = 'Fayom';
          }
          break;
        case 24:
          {
            Country = 'Menia';
          }
          break;
        case 25:
          {
            Country = 'Asuet';
          }
          break;
        case 26:
          {
            Country = 'Suhag';
          }
          break;
        case 27:
          {
            Country = 'Qina';
          }
          break;
        case 28:
          {
            Country = 'Aswan';
          }
          break;
        case 31:
          {
            Country = 'Bahr Ahmer';
          }
          break;
        case 29:
          {
            Country = 'Luxer';
          }
          break;
        case 32:
          {
            Country = 'Wadi Geded';
          }
          break;
        case 33:
          {
            Country = 'Matrooh';
          }
          break;
        case 34:
          {
            Country = 'Shamal Sinaa';
          }
          break;
        case 35:
          {
            Country = 'Ganob Sinaa';
          }
          break;
        case 88:
          {
            Country = 'Out Country';
          }
          break;

        default:
          {
            Country = '';
          }
      }
      day = ID.text[5] + ID.text[6];
      mon = ID.text[3] + ID.text[4];
      int q = int.parse(ID.text[0]);
      if (q == 2) {
        year = "19" + ID.text[1] + ID.text[2];
      } else {
        year = "20" + ID.text[1] + ID.text[2];
      }
      C = container();
    });
  }

  var day = 'Day', mon = 'Mon';
  var year = 'Year';
  String sex = 'Not Selected', Country = 'Not Selected';

  TextEditingController ID = new TextEditingController();

  Widget container() {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: Text("Country"),
            subtitle: Text("$Country"),
            leading: Icon(
              Icons.location_on,
              color: Colors.black,
            ),
          ),
          Divider(
            height: 1,
            thickness: .5,
            color: Colors.black,
          ),
          ListTile(
            title: Text(" Birth of date"),
            subtitle: Text("$year/$mon/$day"),
            leading: Icon(
              Icons.calendar_today_sharp,
              color: Colors.black,
            ),
          ),
          Divider(
            height: 1,
            thickness: .5,
            color: Colors.black,
          ),
          ListTile(
            title: Text("Gender"),
            subtitle: Text("$sex"),
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
          Divider(
            height: 1,
            thickness: .5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  final _x = GlobalKey<FormState>();
  var C = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ID Analysis"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red[300],
                  Colors.teal[200],
                ],
              )),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _x,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                ),
                Row(
                  children: [
                    Text(
                      "Enter ID",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      height: 85,
                      width: 250,
                      child: TextFormField(
                        validator: (value) {
                          RegExp x = new RegExp(r"^[2|3][0-9]{13}$");
                          if (x.hasMatch(value) == false) {
                            return "please Enter Correct ID";
                          } else {
                            return null;
                          }
                        },
                        controller: ID,
                        maxLength: 14,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter Id",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                            BorderSide(width: 2, color: Colors.black87),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                            BorderSide(width: 2, color: Colors.blue),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        bool result = _x.currentState.validate();
                        if (result == true) {
                          onPress();
                        } else {
                          return "false";
                        }
                      });
                    },
                    child: Text(
                      'Details',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                C,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
