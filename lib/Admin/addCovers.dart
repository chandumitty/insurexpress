//import 'dart:io';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
//import 'package:intl/intl.dart';
import 'package:projects/Admin/covers.dart';
import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/model/covers_model.dart';
import 'package:projects/widget/admin_sidemenu.dart';
//import 'package:json_annotation/json_annotation.dart';

class Addcovers extends StatefulWidget {
  const Addcovers({super.key});

  @override
  State<Addcovers> createState() => _AddcoversState();
}

class _AddcoversState extends State<Addcovers> {
  final descriptions = TextEditingController();
  final notes = TextEditingController();
  var token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4NzkwYzA4ZmI1ZWE2ODczMjc3MTI2YyIsImlhdCI6MTc2NDMwNzI2OSwiZXhwIjoxNzY2ODk5MjY5fQ.Rj4t1s80c5ZcE_36ay08qkfLDc_4O3MYIpHlv0CmYXQ";

  late Map<String, String> headers = {
    //'Content-Type': 'application/json',
    'Authorization': 'Bearer $token',
  };

  String _descriptions = "";
  String _notes = "";
  String selectedType = 'Select';
  String selectedCategory = 'Select';

  List<String> insuranceType = [
    'Select',
    'Motor Insurance',
    'Travel Insurance',
  ];
  List<String> coverCategory = [
    'Select',
    'Flight',
    'Medical',
    'Passport',
    'Baggage',
    'Personal',
    'Accident',
    'Hotel',
  ];
  void initState() {
    late CoversModel coversmodel = CoversModel(
      coverCategory: selectedCategory,
      insuranceType: selectedType,
      description: _descriptions,
      status: 'Active',
      note: _notes,
      userid: '68790c08fb5ea6873277126c',
      //amount: 0,
      currency: 'USD',
      //deductible: 0,
      coverId: 'C11111',
    );
  }

  // Future addCoversDetails() async {
  //   Uri url = Uri.parse(
  //     "https://backend1.redsling.com/customroutes/table_data/GereeshPoc_Master_Cover",
  //   );

  //   var response = await http.post(
  //     url,
  //     body: coversmodel.toJson(),
  //     headers: headers,
  //     // {
  //     //   HttpHeaders.contentTypeHeader: "application/json",
  //     //   HttpHeaders.authorizationHeader: "Bearer $token",
  //     // },
  //   );
  //   print('Status code${response.statusCode}');
  //   if (response.statusCode == 200) {
  //     print('Successfully added Covers');
  //   } else {
  //     print('Error message: ${response.statusCode}');
  //   }
  // }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: '',
        onMenuPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),
      drawer: AdminSidemenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 7, 62, 108),
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Add New Covers',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              //SizedBox(height: 5),
              SizedBox(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ), // Outline color
                            borderRadius: BorderRadius.circular(
                              8,
                            ), // Optional: rounded corners
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedType,
                              style: TextStyle(color: Colors.black),

                              items: insuranceType.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedType = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ), // Outline color
                            borderRadius: BorderRadius.circular(
                              8,
                            ), // Optional: rounded corners
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedCategory,
                              style: TextStyle(color: Colors.black),
                              items: coverCategory.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue1) {
                                setState(() {
                                  selectedCategory = newValue1!;
                                });
                              },
                            ),
                          ),
                          //),
                        ),
                      ),

                      //SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: descriptions,
                          maxLines: 5,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintText: 'Enter descriptions ',
                            labelText: 'Descriptions :',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: notes,
                          maxLines: 5,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintText: 'Enter note ',
                            labelText: 'Note :',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Covers(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Color.fromARGB(
                                      255,
                                      7,
                                      62,
                                      108,
                                    ),
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(56),
                                    ),
                                  ),
                                  child: Text(
                                    'Cancel',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 172),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    _descriptions = descriptions.text;
                                    _notes = notes.text;
                                    // var insuranceTType = selectedType
                                    //     .toString();
                                    // print('object :$insuranceTType');
                                    // addCoversDetails();
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => Addcovers(),
                                    //   ),
                                    // );

                                    //print('object');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      7,
                                      62,
                                      108,
                                    ),
                                    foregroundColor: Colors.white,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(56),
                                    ),
                                  ),
                                  child: Text(
                                    'Save',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
